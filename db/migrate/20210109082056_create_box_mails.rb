class CreateBoxMails < ActiveRecord::Migration[6.1]
  def change
    create_table :box_mails do |t|
      t.references :box, null: false, foreign_key: true
      t.references :inbound_mail, null: false, index: true, foreign_key: {to_table: :action_mailbox_inbound_emails}

      t.timestamps
    end
  end
end
