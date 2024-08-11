Changes for FEB-2024-NO-AUTH-NO-ENTRY.GIT
===================================================================================================

2024-08-12
---------------------------------------------------------------------------------------------------
- (Google) Most of "mail" have been replaced with "email" in Gmail SMTP errors and codes page
  - https://support.google.com/a/answer/3726730

2024-07-19
---------------------------------------------------------------------------------------------------
- (Microsoft) The following documents have been updated only document styles
  - Microsoft Fighting Junk Email: https://postmaster.live.com/pm/junkemail.aspx
  - Microsoft Outlook.com Outbound IP Space: https://postmaster.live.com/pm/ipspace.aspx
  - Microsoft Outlook.com Postmaster: https://postmaster.live.com/pm/postmaster.aspx
  - Microsoft Policies, Practices and Guildelines: https://postmaster.live.com/pm/policies.aspx
  - Microsoft Troubleshooting: https://postmaster.live.com/pm/troubleshooting.aspx

2024-07-10
---------------------------------------------------------------------------------------------------
- (Yahoo!) Update the description about DKIM key length (1024-bit or longer) at the followings:
  - Yahoo! Sender Best Practices: https://senders.yahooinc.com/best-practices/
  - Yahoo! Sender FAQ: https://senders.yahooinc.com/faqs/

2024-06-25
---------------------------------------------------------------------------------------------------
- Added some questions and answers in Complaint Feedback Loop (CFL) in Yahoo Sender FAQ

2024-05-30
---------------------------------------------------------------------------------------------------
- Register `apple-102322-icloud-postmaster.txt`; converted from the HTML file downloaded from Apple
  - Postmaster information for iCloud Mail - Apple Support https://support.apple.com/en-us/102322
- More readable README.MD

2024-05-29
---------------------------------------------------------------------------------------------------
- "Unresolvable RFC.5321 from domain" section in Yahoo! Sender Hub/SMTP Error Codes updated
  - https://senders.yahooinc.com/smtp-error-codes/

2024-05-27
---------------------------------------------------------------------------------------------------
- Some sections in Email Sender Guidelines: https://support.google.com/mail/answer/81126 updated

2024-05-24
---------------------------------------------------------------------------------------------------
- `This dashboard is available only to bulk senders` has been removed from the following URLs:
  - Email Sender Guidelines FAQ: https://support.google.com/a/answer/14229414
  - Email sender requirements & Postmaster Tools FAQ: https://support.google.com/mail/answer/14289100
- "This dashborad" means Postmaster Tools (Google)

2024-05-17
---------------------------------------------------------------------------------------------------
- https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
  - Add "Why is the unsubscribe link not appearing" question


2024-05-10
---------------------------------------------------------------------------------------------------
- The following pages updated
  - Gmail SMTP Errors and Codes: https://support.google.com/a/answer/3726730
    - The changes in `4.7.28` seems to be only in the wordking: `"unsolicited"` was removed
    - `5.7.28` related to DKIM errors have been removed and added as `5.7.30`
    - `5.7.29` has been added (Require TLS/SSL)
    - `5.7.30` has been added (It may be the same as the `5.7.28`(DKIM) in the last update
  - Yahoo! Sender SMTP Error Codes: https://senders.yahooinc.com/smtp-error-codes/
    - "Authentication failures" section explicitly told to authenticate SPF, DKIM, and DMARC

2024-04-30
---------------------------------------------------------------------------------------------------
- SMTP error codes in Google updated
  - https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
    - The list sorted by the code
    - `4.7.31` has been added
    - Description of each error code have been updated
  - https://support.google.com/a/answer/3726730 - Gmail SMTP errors and codes
    - Tiny updates of `Reply Text` field in `4.7.23`, `4.7.28`, `4.7.29`, `4.7.30`, and `4.7.32`
    - There is no description yet about `4.7.31`

2024-04-09
---------------------------------------------------------------------------------------------------
- The opening sentence of the following pages updated
  - https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
  - https://support.google.com/mail/answer/14289100 - Sender requirements & Postmaster Tools FAQ

2024-04-05
---------------------------------------------------------------------------------------------------
- The opening sentence of Google Email sender guidelines (81126) has been updated

2024-03-16
---------------------------------------------------------------------------------------------------
- The changes in Google Email sender guidelines (81126) seem to be only in the wording.
- #2 Follow "Best practices for forwarding email to Gmail (175365)"

2024-03-08
---------------------------------------------------------------------------------------------------
- The "Sender guidelines enforcement" section in Google Email sender guidelines FAQ updated
  - https://support.google.com/a/answer/14229414
  - Added "Starting in April 2024,..."

2024-03-02
---------------------------------------------------------------------------------------------------
- Gmail SMTP Errors and Codes page has been significantly updated.
  - https://support.google.com/a/answer/3726730
  - Added X.7.24,26,27 and other domain authentication related errors.

2024-02-27
---------------------------------------------------------------------------------------------------
- Some FAQs in Google Email sender guidelines FAQ have been updated
  - About getting SMTP Temporary errors
  - Timeline table
  - Enforcement on new domains
  - Error code list such as 4.7.27

2024-02-07
---------------------------------------------------------------------------------------------------
- Some FAQs about the spam rate in Google Email sender guidelines FAQ have been updated

2024-02-02
---------------------------------------------------------------------------------------------------
- Updated about One-Click unsubsribe at Yahoo! Senders FAQ: https://senders.yahooinc.com/faqs/
  - yahoo-senders-faq.txt
  - yahoo-senders-faq/html/yahoo-senders-faq-2024-02-02.html
  - yahoo-senders-faq/text/yahoo-senders-faq-2024-02-02.txt

2024-01-31
---------------------------------------------------------------------------------------------------
- Register the following text downloaded from Microsoft: https://postmaster.live.com/
  - microsoft-fighting-junk-email.txt
  - microsoft-outlook-outbound-ip-space.txt
  - microsoft-outlook-postmaster.txt
  - microsoft-policies-practices-and-guidelines.txt
  - microsoft-services-for-senders-and-isps.txt
  - microsoft-troubleshooting.txt

2024-01-18
---------------------------------------------------------------------------------------------------
- Google Email sender guidelines FAQ has been updated
  - Some questions and answers added in Unsubscribe links section

2023-12-28
---------------------------------------------------------------------------------------------------
- Register the following files:
  - google-14289100-email-sender-requirements-and-postmaster-tools-faq.txt
    - Email sender requirements & Postmaster Tools FAQ
    - https://support.google.com/mail/answer/14289100
  - google-6254652-feedback-loop.txt
    - Feedback Loop
    - https://support.google.com/mail/answer/6254652
  - yahoo-senders-faq.txt
    - Yahoo! Sender FAQ
    - https://senders.yahooinc.com/faqs/
  - yahoo-senders-smtp-error-codes.txt
    - Yahoo! Sender SMTP Error Codes
    - https://senders.yahooinc.com/smtp-error-codes/

2023-12-27
---------------------------------------------------------------------------------------------------
- Update Yahoo! Sender Best Practices
  - Update the Note in "Email Sender Requirements"
  - Update "Requirements for Bulk Senders/1. Authenticate your mail"

2023-12-24
---------------------------------------------------------------------------------------------------
- Register 14229214: Email sender guidelines FAQ

2023-12-20
---------------------------------------------------------------------------------------------------
- Update Yahoo! Sender Best Practices
  - Title changed: "Sender Best Practices" => "Sender Requirements & Recommendations"
  - Anounced about "No Auth, No Entry" starting from February 2024
    - Email Sender Requirements
    - Requirements for Bulk Senders
    - Additional Recommendations for Senders

2023-12-11
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines
  - Description for a TLS connection in Google Workspace added
  - `Keep spam rates below 0.30%|Oct. 2023|` has been removed from sender requirements table

2023-12-06
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines
  - Added "Sender requirements updates" table
  - Use a TLS connection for transmitting email

2023-12-02
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines
  - Google Workspace account was excluded (@gmail.com and @googlemail.com only)
  - Spam rate has been changed: 0.3% => 0.10%
  - Linked to Email sender guidelines FAQ (14229214)

2023-11-18
---------------------------------------------------------------------------------------------------
- Register Yahoo! Sender Hub/Sender Best Practices

2023-10-30
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines; Anouncement about One-click unsubscribe updated

2023-10-12
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines/List-Unsubscribe

2023-10-03
---------------------------------------------------------------------------------------------------
- Update 81126: Email sender guidelines
  - Anounced about "No Auth, No Entry" starting from February 2024

2023-09-16
---------------------------------------------------------------------------------------------------
- Register 81126: Email sender guidelines 

2023-03-06
---------------------------------------------------------------------------------------------------
- Register 3726730: Gmail SMTP errors and codes 

