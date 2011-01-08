##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-01-08 #
# Updated version detection
##
Plugin.define "bSpeak" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-27
version "0.2"
description "bSpeak is 26th Avenue's threaded message board application. It is full-featured and fast, allowing you to create a community, provide online support, or provide announcements for your website. - homepage: http://www.bspeak.com/"

# 23 results for "powered by bSpeak" @ 2010-08-27

# Examples #
examples %w|
www.26thavenue.com/bspeakdemo/
www.channelc.org/ChCForum/forum/
72.167.87.238/bspeak/forum/
www.england-supporters.com/forum/forum/
www.theirishhammer.com/bspeak110professional/
www.litclasses.com/bspeak/forum/
www.gamecockgurus.com/bspeak/
apocalypticnut.com/bspeak/
www.teachingmom.com/boards/
ip-72-167-87-238.ip.secureserver.net/bspeak/forum/
|

# Matches #
matches [

	# Default title
	{ :text=>' - powered by bSpeak</TITLE>' },

	# Version Detection # Powered by text
	{ :version=>/<br><div align="center"><span class="tinytext">Powered by <\/span><a href="http:\/\/www.bspeak.com" class="tinylink" target="bspeak_window">bSpeak ([\d\.]+)<\/a><\/div>/, :regexp_offset=>0 },

]

end

