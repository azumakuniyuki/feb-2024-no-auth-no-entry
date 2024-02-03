NO AUTH, NO ENTRY STARTING FROM FEBRUARY 2024
===================================================================================================
A tracking of the differences between official announcements related to "No Auth, No Entry" at 
Google and Yahoo! starting from February 2024.

Files and directories
---------------------------------------------------------------------------------------------------
```
google-14229414-email-sender-guidelines-faq.txt - The latest "Email sender guidelines FAQ" text
google-14229414-email-sender-guidelines-faq/
  text/ ----------------------------------------- Keeping updated text files of 14229414
  html/ ----------------------------------------- Keeping updated HTML files of 14229414
google-3726730-smtp-errors-and-codes.txt -------- The latest "Gmail SMTP errors and codes" text
google-3726730-smtp-errors-and-codes/
  text/ ----------------------------------------- Keeping updated text files of 3726730
  html/ ----------------------------------------- Keeping updated HTML files of 3726730
google-81126-email-sender-guidelines.txt -------- The latest "Email sender guidelines" text
google-81126-email-sender-guidelines/
  text/ ----------------------------------------- Keeping updated text files of 81126
  html/ ----------------------------------------- Keeping updated HTML files of 81126
yahoo-senders-best-practices.txt ---------------- The latest "Senders best practices(Y!)" text
yahoo-senders-best-practices/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
yahoo-senders-faq.txt --------------------------- The latest "Yahoo! Senders FAQ" text
yahoo-senders-faq/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-fighting-junk-email.txt --------------- The latest "Fighting Junk Email" text
microsoft-fighting-junk-email/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-outlook-outbound-ip-space.txt --------- The latest "Outlook.com Outbound IP Space" text
microsoft-outlook-outbound-ip-space/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-outlook-postmaster.txt ---------------- The latest "Outlook.com Postmaster" text
microsoft-outlook-postmaster/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-policies-practices-and-guidelines.txt - The latest "Policies, Practices and Guidelines" text
microsoft-policies-practices-and-guidelines/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-services-for-senders-and-isps.txt ----- The latest "Services for Senders and ISPs" text
microsoft-services-for-senders-and-isps/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above
microsoft-troubleshooting.txt ------------------- The latest "Troubleshooting" text
microsoft-troubleshooting/
  text/ ----------------------------------------- Keeping updated text files of text above
  html/ ----------------------------------------- Keeping updated HTML files of text above

google-14289100-email-sender-requirements-and-postmaster-tools-faq.txt
google-6254652-feedback-loop.txt
yahoo-senders-smtp-error-codes.txt
```

Download the latest announcements
---------------------------------------------------------------------------------------------------
### Requirements for downloading
`Makefile` require the following commands to download HTML file from Google and Yahoo!:
- `perl`
- `wget`
- `w3m`

```
% make updates (download 3 HTML files from Google, 1 HTML file from Yahoo!)
% make 81126 (download https://support.google.com/mail/answer/81126 only)
...
```

`make` command above generates `./*.txt` file in the top directory of this repository by `w3m -M`
command from each downloaded HTML file.

### Check differences(1)
If there is an important update, we will add a tag in the format "YYYY-MM-DD" as follows.

```
% git tag -l
...
2023-12-11
2023-12-20
2023-12-24
```

To check what has changed between October and December, please run the git diff command with the
file name as follows.

```
% git diff 2023-10-03 2023-12-20 ./google-81126*txt
diff --git a/google-81126-email-sender-guidelines.txt b/google-81126-email-sender-guidelines.txt
index 2496278..ee32aaa 100644
--- a/google-81126-email-sender-guidelines.txt
+++ b/google-81126-email-sender-guidelines.txt
@@ -2,7 +2,7 @@ Skip to main content

 Gmail Help
 [                    ]
-
+●
 Sign in

 Google Help
@@ -39,22 +39,29 @@ recipients to unsubscribe. Learn more about requirements for sending 5,000 or
 more emails per day.

 The guidelines in this article can help you successfully send and deliver email
-to Gmail accounts. A Gmail account is one of these account types:
-
-  • A personal account that ends in @gmail.com or @googlemail.com
-  • A work or school account from Google Workspace. These account types don’t
-    end in @gmail.com.
+to personal Gmail accounts. A personal Gmail account is an account that ends in
+@gmail.com or @googlemail.com.
...
```

### Check differences(2)
The `google-81126-email-sender-guidelines/text` directory has files for the days that important
changes were made. The following command can also be used to check the changes made in October and
December.

```
% cd ./google-81126-email-sender-guidelines/text
% diff -u 81126-2023-10-03.txt 81126-2023-12-02.txt
--- 81126-2023-10-03.txt	2023-12-26 22:00:49.000000000 +0900
+++ 81126-2023-12-02.txt	2023-12-26 22:42:38.000000000 +0900
@@ -2,7 +2,7 @@

 Gmail Help
 [                    ]
-
+●
 Sign in

 Google Help
@@ -39,11 +39,8 @@
 more emails per day.

 The guidelines in this article can help you successfully send and deliver email
-to Gmail accounts. A Gmail account is one of these account types:
-
-  • A personal account that ends in @gmail.com or @googlemail.com
-  • A work or school account from Google Workspace. These account types don’t
-    end in @gmail.com.
+to personal Gmail accounts. A personal Gmail account is an account that ends in
+@gmail.com or @googlemail.com.
...
```

### Check differences(3)
To check for important updates, run `git diff google-81126-email-sender-guidelines.txt` after
running the make updates command. 

```
% make updates (OR make 81126)
...
% git diff google-81126-email-sender-guidelines.txt
diff --git a/google-81126-email-sender-guidelines.txt b/google-81126-email-sender-guidelines.txt
index ee32aaa..518f70d 100644
--- a/google-81126-email-sender-guidelines.txt
+++ b/google-81126-email-sender-guidelines.txt
@@ -27,7 +27,7 @@ Next

 Gmail

-  • Send bulk emails
+  • Bulk email sending guidelines & tools
   • Email sender guidelines
...
```

References
---------------------------------------------------------------------------------------------------
- Google
    - [Gmail SMTP Errors and Codes(3726730)](https://support.google.com/a/answer/3726730?hl=en)
    - [Email Sender Guidelines(81126)](https://support.google.com/mail/answer/81126?hl=en)
    - [Email Sender Guidelines FAQ(14229414)](https://support.google.com/a/answer/14229414?hl=en)
    - [Email sender requirements & Postmaster Tools FAQ](https://support.google.com/mail/answer/14289100?hl=en)
    - [Feedback Loop](https://support.google.com/mail/answer/6254652?hl=en)
- Yahoo!
    - [Sender Hub/Sender Best Practices](https://senders.yahooinc.com/best-practices/)
    - [Yahoo! Sender FAQ](https://senders.yahooinc.com/faqs/)
    - [Yahoo! Sender SMTP Error Codes](https://senders.yahooinc.com/smtp-error-codes/)

