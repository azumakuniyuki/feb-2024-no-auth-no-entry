Changes for FEB-2024-NO-AUTH-NO-ENTRY.GIT
===================================================================================================

2025-09-22
---------------------------------------------------------------------------------------------------
- (Microsoft) The following documents have been updated
  - Microsoft Outlook.com Postmaster: https://postmaster.live.com/pm/postmaster.aspx
  - Microsoft Policies, Practices and Guildelines: https://postmaster.live.com/pm/policies.aspx
  - Microsoft Troubleshooting: https://postmaster.live.com/pm/troubleshooting.aspx

2025-08-02
---------------------------------------------------------------------------------------------------
- (Google) Some status codes begin with "5.7" have been changed at Gmail SMTP Errors and Codes.
  - https://support.google.com/a/answer/3726730
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/364214227bfd43c4c20fb0f706e4c941ee892ced)
- (Microsoft) Making a commit to handle the increasing volume of user comments at Strengthening
  Email Ecosystem: Outlook?fs New Requirements for High?]Volume Senders page.
- (Yahoo!) Tiny document updated at Yahoo! Sender FAQ: https://senders.yahooinc.com/faqs/ page.

2025-05-05
---------------------------------------------------------------------------------------------------
- (Microsoft) Register the sender requirements of Micsrosoft
  - Strengthening Email Ecosystem: Outlook?fs New Requirements for High?]Volume Senders
  - https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/strengthening-email-ecosystem-outlook%E2%80%99s-new-requirements-for-high%E2%80%90volume-senders/4399730

2025-04-19
---------------------------------------------------------------------------------------------------
- (Google) Updates in Email Sender Guidelines: https://support.google.com/mail/answer/81126
  - Guidelines for email display names
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/0943989ec14990cdc8292a7c098265bcc20d35c6)

2025-04-11
---------------------------------------------------------------------------------------------------
- (Yahoo!) Updates in Yahoo! Sender SMTP Error Codes: https://senders.yahooinc.com/smtp-error-codes/
  - Other policy errors (e.g. 550, 554)
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/41bc9592a04e633912dec491f295757e51cc1bce)

2025-04-10
---------------------------------------------------------------------------------------------------
- (Yahoo!) Updates in - Yahoo! Sender Best Practices: https://senders.yahooinc.com/best-practices/
  - Added `If you forward emails, implement ARC (Authenticated Received Chain).`
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/23dbc45494894eb92eb11dbba6b81e54c3a3fe67)
- (Google) Updates in Gmail SMTP Errors and Codes: https://support.google.com/a/answer/3726730
  - Added `\n` just before `Authentication results: SPF ...` in the row of 421 4.7.27.
  - `because this message` has been replaced with `because you're` in the row of 421 4.7.29.
  - Added `\n` just before `Authentication results: DKIM = Did not pass.` in the row of 421 4.7.30.
  - New error codes:
    - **421 4.7.40**: "Your email has been rate limited because the sending domain doesn?ft have a
      DMARC record, or the DMARC record doesn?ft specify a DMARC policy. Gmail requires all bulk
      email senders to add a DMARC record to their sending domain." between 4.7.30 and 4.7.32
    - **421 5.7.32**: "Your email was blocked because the From: header (RFC5322) in this message
      isn?ft aligned with either the authenticated SPF or DKIM organizational domain."
    - **Empty Codes**: "Your message was blocked because the sending domain doesn?ft have a DMARC
      record or the DMARC record doesn?ft specify a DMARC policy." just after the row of 550 5.7.30.
  - Description about a PTR record (550 5.7.25) updated. Previously, error code `5.7.25` had two
    separate descriptions, which are now combined into one.
  - Description about SPF record (550 5.7.27) updated.
  - Description about TLS/SSL (550 5.7.29) updated.
  - Description about DKIM (550 5.7.30) updated.
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/278ca8c6312f7b8927d0dbcc0c875bcb7df51835)

2025-02-26
---------------------------------------------------------------------------------------------------
- (Google) Email Sender guidelines FAQ: https://support.google.com/a/answer/14229414
    - Tables in the following sections updated
      - "What happens if senders don?ft meet the requirements in the sender guidelines?"
      - "What error codes will you send?"
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/bb1829f8ff34dd90cf26209f73b4695408ce78c0)
- (Apple) Postmaster information for iCloud Mail: https://support.apple.com/en-us/102322
    - Update "best practices" to "requirements" for sending bulk emails
    - ARC required for the forwarding email, DMARC record required for bulk senders
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/b5e06c527120ace3407ade449e9e1f6ae1cec088)

2025-01-24
---------------------------------------------------------------------------------------------------
- (Google) Updates in Email sender guidelines FAQ
  - https://support.google.com/a/answer/14229414?hl=en
  - The preamble and the following sections have been updated
    - Sender guidelines enforcement
      - Added "5.7.**" error codes in "What error codes will you send?"
    - Support & escalation (tiny updates)
    - Related resource (added at this updates)
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/7c3352a24a3434c133bddc9682672faad707e464)

2024-12-28
---------------------------------------------------------------------------------------------------
- (Google) Add the following sentences at
  - Best practices for forwarding email to Gmail
    - https://support.google.com/mail/answer/175365?hl=en
    - Check for previous authentication: When ARC shows that a forwarded message previously passed
      authentication, Gmail doesn't automatically authenticate the message. Instead, it does its
      own authentication check on the message.
  - Email Sender Guidelines
    - https://support.google.com/mail/answer/81126
    - When ARC shows that a forwarded message previously passed authentication, Gmail doesn’t auto-
      matically authenticate the message. Instead, Gmail does its own authentication check on the
      message.

2024-12-20
---------------------------------------------------------------------------------------------------
- (Yahoo!) Added `If your mail is forwarded, consider adding ARC` in SMTP Error Codes page
  - https://senders.yahooinc.com/smtp-error-codes/

2024-08-12
---------------------------------------------------------------------------------------------------
- (Google) Most of "mail" have been replaced with "email" in Gmail SMTP errors and codes page
  - https://support.google.com/a/answer/3726730
- [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/5581be97befccb67273e968bd481fe72f2a7cfb4)

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
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/2aaac2256bc9cf2c3e6321b92ea35eb746a614af)

2024-06-25
---------------------------------------------------------------------------------------------------
- Added some questions and answers in Complaint Feedback Loop (CFL) in Yahoo Sender FAQ
- [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/02f31f5797c09025dc347195f311a14d16dd71b2)

2024-05-30
---------------------------------------------------------------------------------------------------
- Register `apple-102322-icloud-postmaster.txt`; converted from the HTML file downloaded from Apple
  - Postmaster information for iCloud Mail - Apple Support https://support.apple.com/en-us/102322
- More readable README.MD

2024-05-29
---------------------------------------------------------------------------------------------------
- "Unresolvable RFC.5321 from domain" section in Yahoo! Sender Hub/SMTP Error Codes updated
  - https://senders.yahooinc.com/smtp-error-codes/
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/b4807ce6c4a74afac073645a3f86a95f9c348be8)

2024-05-27
---------------------------------------------------------------------------------------------------
- Some sections in Email Sender Guidelines: https://support.google.com/mail/answer/81126 updated
- [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/7d65928daecc0d7cb06d85aa130143a03c4427fd)

2024-05-24
---------------------------------------------------------------------------------------------------
- `This dashboard is available only to bulk senders` has been removed from the following URLs:
  - Email Sender Guidelines FAQ: https://support.google.com/a/answer/14229414
  - Email sender requirements & Postmaster Tools FAQ: https://support.google.com/mail/answer/14289100
- "This dashborad" means Postmaster Tools (Google)
- [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/7405111a9336ae58e3c64777272c4e26278bae50)

2024-05-17
---------------------------------------------------------------------------------------------------
- https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
  - Add "Why is the unsubscribe link not appearing" question
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/82bb74de83cda22d85efc1c47701ab4d96367183)


2024-05-10
---------------------------------------------------------------------------------------------------
- The following pages updated
  - Gmail SMTP Errors and Codes: https://support.google.com/a/answer/3726730
    - The changes in `4.7.28` seems to be only in the wordking: `"unsolicited"` was removed
    - `5.7.28` related to DKIM errors have been removed and added as `5.7.30`
    - `5.7.29` has been added (Require TLS/SSL)
    - `5.7.30` has been added (It may be the same as the `5.7.28`(DKIM) in the last update
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/d477b178e12fc6d929a23ca781f132d9cd09500a)
  - Yahoo! Sender SMTP Error Codes: https://senders.yahooinc.com/smtp-error-codes/
    - "Authentication failures" section explicitly told to authenticate SPF, DKIM, and DMARC
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/f10b7b8699973e5d5aa4d28027eb659426d8ea98)

2024-04-30
---------------------------------------------------------------------------------------------------
- SMTP error codes in Google updated
  - https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
    - The list sorted by the code
    - `4.7.31` has been added
    - Description of each error code have been updated
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/1d6adedeb9f099690d5ced938f217eccb8992a57)
  - https://support.google.com/a/answer/3726730 - Gmail SMTP errors and codes
    - Tiny updates of `Reply Text` field in `4.7.23`, `4.7.28`, `4.7.29`, `4.7.30`, and `4.7.32`
    - There is no description yet about `4.7.31`
    - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/01cc575e438e5e1ed8b78fc553cbb458ab7f6e40)

2024-04-09
---------------------------------------------------------------------------------------------------
- The opening sentence of the following pages updated
  - https://support.google.com/a/answer/14229414 - Email sender guidelines FAQ
  - https://support.google.com/mail/answer/14289100 - Sender requirements & Postmaster Tools FAQ
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/1244ecdafccd110bc051cd3406ddd7357f59babf)

2024-04-05
---------------------------------------------------------------------------------------------------
- The opening sentence of Google Email sender guidelines (81126) has been updated
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/64c994d3c16e332cfd3bb5ca46bfdcabe9b1f368)

2024-03-16
---------------------------------------------------------------------------------------------------
- The changes in Google Email sender guidelines (81126) seem to be only in the wording.
- #2 Follow "Best practices for forwarding email to Gmail (175365)"
- [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/7c2e0ad8eb08644a5e7c9736b8806a81ca062df5)

2024-03-08
---------------------------------------------------------------------------------------------------
- The "Sender guidelines enforcement" section in Google Email sender guidelines FAQ updated
  - https://support.google.com/a/answer/14229414
  - Added "Starting in April 2024,..."
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/62cef40d354611fd2a1835313172a018b48b3cc5)

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
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/36ee16bfaf7ff811f594cda3ba23b7ef79f08f7e)

2024-02-07
---------------------------------------------------------------------------------------------------
- Some FAQs about the spam rate in Google Email sender guidelines FAQ have been updated
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/fb94df247d904fb3fbff52a05bea3578065c3458)

2024-02-02
---------------------------------------------------------------------------------------------------
- Updated about One-Click unsubsribe at Yahoo! Senders FAQ: https://senders.yahooinc.com/faqs/
  - yahoo-senders-faq.txt
  - yahoo-senders-faq/html/yahoo-senders-faq-2024-02-02.html
  - yahoo-senders-faq/text/yahoo-senders-faq-2024-02-02.txt
  - [🐈Commentary on Important Changes](https://github.com/azumakuniyuki/feb-2024-no-auth-no-entry/commit/7aedca5d7525f6d5c88ad4e7fc58b82525f2153f#comments)

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

