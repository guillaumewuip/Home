#!/usr/bin/env bash

echo "starting post-new"

# remove archive tag for message still in inbox
notmuch tag -archive -- tag:inbox

# tag SPAM
notmuch tag -inbox +spam -unread -- path:/.*Spam*./

# tag Drafts
notmuch tag -inbox +draft -- path:/.*Drafts*./
notmuch tag -inbox +draft -- path:/.*Brouillons*./

notmuch tag +guigui-wuip-gmail -- path:guigui-wuip-gmail/**
notmuch tag +clochard-guillaume-gmail -- path:clochard-guillaume-gmail/**
notmuch tag +guillaume-wuips -- path:guillaume-wuips/**

# tag all messages from "me" as sent and remove tags inbox and unread
notmuch tag -inbox +sent +archive -- 'not tag:draft and (from:guillaume@wuips.com or from:clochard.guillaume@gmail.com or from:guigui.wuip@gmail.com)'

echo "post-new completed"
