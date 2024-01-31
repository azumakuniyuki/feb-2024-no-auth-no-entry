#  __  __       _         __ _ _      
# |  \/  | __ _| | _____ / _(_) | ___ 
# | |\/| |/ _` | |/ / _ \ |_| | |/ _ \
# | |  | | (_| |   <  __/  _| | |  __/
# |_|  |_|\__,_|_|\_\___|_| |_|_|\___|
# -------------------------------------------------------------------------------------------------
SHELL := /bin/sh
TIME  := $(shell date '+%s')
PERL  ?= perl
WGET  := wget -c
W3M   := w3m -M
CURL  := curl -L
TEMP  := temp
MKDIR := mkdir -p
CP    := cp -p
MV    := mv
RM    := rm -f
GIT   ?= git

.DEFAULT_GOAL = git-status
REPOS_TARGETS = git-status git-push git-commit-amend git-tag-list git-diff git-reset-soft git-rm-cached git-branch
# -------------------------------------------------------------------------------------------------
.PHONY: clean

updates:
	$(MAKE) update-google
	$(MAKE) update-yahoo
	$(MAKE) update-microsoft

update-google:
	$(MAKE) 3726730		# Google: Gmail SMTP errors and codes
	$(MAKE) 81126   	# Google: Email Sender Guidelines
	$(MAKE) 14229414	# Google: Email Sender Guidelines FAQ
	$(MAKE) 14289100	# Google: Email Sender Requirements & Postmaster Tools FAQ
	$(MAKE)	6254652		# Google: Feedback Loop

update-yahoo:
	$(MAKE) senders-best-practices		# Yahoo! Sender Best Practices
	$(MAKE) senders-faq					# Yahoo! Sender FAQ
	$(MAKE) senders-smtp-error-codes	# Yahoo! Sender SMTP Error Codes

update-microsoft:
	$(MAKE) outlook-postmaster 					# Microsoft Outlook.com Postmaster
	$(MAKE) fighting-junk-email					# Microsoft Fighting Junk Email
	$(MAKE) policies-practices-and-guidelines	# Microsoft Policies, Practices and Guildelines
	$(MAKE) services-for-senders-and-isps		# Microsoft Services for Senders and ISPs
	$(MAKE) troubleshooting 					# Microsoft Troubleshooting
	$(MAKE) outlook-outbound-ip-space 			# Microsoft Outlook.com Outbound IP Space

temp-dirs:
	test -d ./$(TEMP)      || $(MKDIR) ./$(TEMP)
	test -d ./$(TEMP)/text || $(MKDIR) ./$(TEMP)/text
	test -d ./$(TEMP)/html || $(MKDIR) ./$(TEMP)/html

url-list:
	@ grep '^\t# ' Makefile | tr -d '\t' | tr '#' '-'

smtp-errors-and-codes: temp-dirs
	@ touch $@

3726730: smtp-errors-and-codes
	# Gmail SMTP Errors and Codes: https://support.google.com/a/answer/3726730
	$(WGET) -O $@.html "https://support.google.com/a/answer/3726730?hl=en"
	$(W3M) ./$@.html > $@.txt
	$(PERL) -i -0pE 's/^\[English.+$$//ms' $@.txt
	test -d ./google-$@-$</text || $(MKDIR) ./google-$@-$</text
	test -d ./google-$@-$</html || $(MKDIR) ./google-$@-$</html

	$(CP) ./$@.txt  ./google-$@-$<.txt
	$(MV) ./$@.txt  $(TEMP)/text/google-$@-$<-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/google-$@-$<-`date '+%F'`.html
	$(RM) $<

email-sender-guidelines: temp-dirs
	@ touch $@

81126: email-sender-guidelines
	# Email Sender Guidelines: https://support.google.com/mail/answer/81126
	$(WGET) -O $@.html "https://support.google.com/mail/answer/81126?hl=en"
	$(W3M) ./$@.html > $@.txt
	$(PERL) -i -0pE 's/^\[English.+$$//ms' $@.txt
	test -d ./google-$@-$</text || $(MKDIR) ./google-$@-$</text
	test -d ./google-$@-$</html || $(MKDIR) ./google-$@-$</html

	$(CP) ./$@.txt  ./google-$@-$<.txt
	$(MV) ./$@.txt  $(TEMP)/text/google-$@-$<-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/google-$@-$<-`date '+%F'`.html
	$(RM) $<

email-sender-guidelines-faq: temp-dirs
	@ touch $@

14229414: email-sender-guidelines-faq
	# Email Sender Guidelines FAQ: https://support.google.com/a/answer/14229414
	$(WGET) -O $@.html "https://support.google.com/a/answer/14229414?hl=en"
	$(W3M) ./$@.html > $@.txt
	$(PERL) -i -0pE 's/^\[English.+$$//ms' $@.txt
	test -d ./google-$@-$</text || $(MKDIR) ./google-$@-$</text
	test -d ./google-$@-$</html || $(MKDIR) ./google-$@-$</html

	$(CP) ./$@.txt  ./google-$@-$<.txt
	$(MV) ./$@.txt  $(TEMP)/text/google-$@-$<-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/google-$@-$<-`date '+%F'`.html
	$(RM) $<

email-sender-requirements-and-postmaster-tools-faq: temp-dirs
	@ touch $@

14289100: email-sender-requirements-and-postmaster-tools-faq
	# Email sender requirements & Postmaster Tools FAQ: https://support.google.com/mail/answer/14289100
	$(WGET) -O $@.html "https://support.google.com/mail/answer/14289100?hl=en"
	$(W3M) ./$@.html > $@.txt
	$(PERL) -i -0pE 's/^\[English.+$$//ms' $@.txt
	test -d ./google-$@-$</text || $(MKDIR) ./google-$@-$</text
	test -d ./google-$@-$</html || $(MKDIR) ./google-$@-$</html

	$(CP) ./$@.txt  ./google-$@-$<.txt
	$(MV) ./$@.txt  $(TEMP)/text/google-$@-$<-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/google-$@-$<-`date '+%F'`.html
	$(RM) $<

feedback-loop: temp-dirs
	@ touch $@

6254652: feedback-loop
	# Feedback Loop: https://support.google.com/mail/answer/6254652
	$(WGET) -O $@.html "https://support.google.com/mail/answer/6254652?hl=en"
	$(W3M) ./$@.html > $@.txt
	$(PERL) -i -0pE 's/^\[English.+$$//ms' $@.txt
	test -d ./google-$@-$</text || $(MKDIR) ./google-$@-$</text
	test -d ./google-$@-$</html || $(MKDIR) ./google-$@-$</html

	$(CP) ./$@.txt  ./google-$@-$<.txt
	$(MV) ./$@.txt  $(TEMP)/text/google-$@-$<-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/google-$@-$<-`date '+%F'`.html
	$(RM) $<

senders-best-practices: temp-dirs
	# Yahoo! Sender Best Practices: https://senders.yahooinc.com/best-practices/
	$(WGET) -O $@.html "https://senders.yahooinc.com/best-practices/"
	$(W3M) ./$@.html > $@.txt
	test -d ./yahoo-$@/text || $(MKDIR) ./yahoo-$@/text
	test -d ./yahoo-$@/html || $(MKDIR) ./yahoo-$@/html

	$(CP) ./$@.txt  ./yahoo-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/yahoo-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/yahoo-$@-`date '+%F'`.html

senders-faq: temp-dirs
	# Yahoo! Sender FAQ: https://senders.yahooinc.com/faqs/
	$(WGET) -O $@.html "https://senders.yahooinc.com/faqs/"
	$(W3M) ./$@.html > $@.txt
	test -d ./yahoo-$@/text || $(MKDIR) ./yahoo-$@/text
	test -d ./yahoo-$@/html || $(MKDIR) ./yahoo-$@/html

	$(CP) ./$@.txt  ./yahoo-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/yahoo-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/yahoo-$@-`date '+%F'`.html

senders-smtp-error-codes: temp-dirs
	# Yahoo! Sender SMTP Error Codes: https://senders.yahooinc.com/smtp-error-codes/
	$(WGET) -O $@.html "https://senders.yahooinc.com/smtp-error-codes/"
	$(W3M) ./$@.html > $@.txt
	test -d ./yahoo-$@/text || $(MKDIR) ./yahoo-$@/text
	test -d ./yahoo-$@/html || $(MKDIR) ./yahoo-$@/html

	$(CP) ./$@.txt  ./yahoo-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/yahoo-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/yahoo-$@-`date '+%F'`.html

outlook-postmaster: temp-dirs
	# Microsoft Outlook.com Postmaster: https://postmaster.live.com/pm/postmaster.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/postmaster.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

fighting-junk-email: temp-dirs
	# Microsoft Fighting Junk Email: https://postmaster.live.com/pm/junkemail.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/junkemail.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

policies-practices-and-guidelines: temp-dirs
	# Microsoft Policies, Practices and Guildelines: https://postmaster.live.com/pm/policies.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/policies.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

services-for-senders-and-isps: temp-dirs
	# Microsoft Services for Senders and ISPs: https://postmaster.live.com/pm/services.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/services.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

troubleshooting: temp-dirs
	# Microsoft Troubleshooting: https://postmaster.live.com/pm/troubleshooting.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/troubleshooting.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

outlook-outbound-ip-space: temp-dirs
	# Microsoft Outlook.com Outbound IP Space: https://postmaster.live.com/pm/ipspace.aspx
	$(WGET) -O $@.html "https://postmaster.live.com/pm/ipspace.aspx"
	$(W3M) ./$@.html > $@.txt
	test -d ./microsoft-$@/text || $(MKDIR) ./microsoft-$@/text
	test -d ./microsoft-$@/html || $(MKDIR) ./microsoft-$@/html

	$(CP) ./$@.txt  ./microsoft-$@.txt
	$(MV) ./$@.txt  $(TEMP)/text/microsoft-$@-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/microsoft-$@-`date '+%F'`.html

# -------------------------------------------------------------------------------------------------
git-status:
	$(GIT) status

push: git-push
git-push:
	@ for v in `$(GIT) remote show | grep -v origin`; do \
		printf "[%s]\n" $$v; \
		$(GIT) push --tags $$v `$(MAKE) git-current-branch`; \
	done

git-tag-list:
	$(GIT) tag -l

git-diff:
	$(GIT) diff -w

git-branch:
	$(GIT) branch -a

git-reset-soft:
	$(GIT) reset --soft HEAD^

git-commit-amend:
	$(GIT) commit --amend

git-current-branch:
	@$(GIT) branch --contains=HEAD | grep '*' | awk '{ print $$2 }'

git-follow-log:
	$(GIT) log --follow -p $(V) || printf "\nUsage:\n %% make $@ V=<filename>\n"

git-branch-tree:
	$(GIT) log --graph --pretty='format:%C(yellow)%h%Creset %s %Cgreen(%an)%Creset %Cred%d%Creset'

git-rm-cached:
	$(GIT) rm -f --cached $(V) || printf "\nUsage:\n %% make $@ V=<filename>\n"

# -------------------------------------------------------------------------------------------------
clean:
	$(RM) ./smtp-errors-and-codes ./email-sender-guidelines ./email-sender-guidelines-faq

