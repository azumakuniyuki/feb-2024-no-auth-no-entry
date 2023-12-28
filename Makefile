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
	$(MAKE) 3726730		# Google: Gmail SMTP errors and codes
	$(MAKE) 81126   	# Google: Email Sender Guidelines
	$(MAKE) 14229414	# Google: Email Sender Guidelines FAQ
	$(MAKE) 14289100	# Google: Email Sender Requirements & Postmaster Tools FAQ
	$(MAKE)	6254652		# Google: Feedback Loop
	$(MAKE) senders-best-practices	# Yahoo! Sender Best Practices

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
	$(MV) ./$@.txt  $(TEMP)/text/yahoo-`date '+%F'`.txt
	$(MV) ./$@.html $(TEMP)/html/yahoo-`date '+%F'`.html

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

