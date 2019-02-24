# -*- coding: us-ascii -*-
# frozen_string_literal: false
# $RoughId: extconf.rb,v 1.3 2001/08/14 19:54:51 knu Exp $
# $Id: extconf.rb 53143 2015-12-16 05:31:54Z naruse $

require "mkmf"
require File.expand_path("../../digest_conf", __FILE__)

$defs << "-DHAVE_CONFIG_H"

$objs = [ "sha1init.#{$OBJEXT}" ]

digest_conf("sha1", "sha", nil, %w[SHA])

have_header("sys/cdefs.h")

$preload = %w[digest]

create_makefile("digest/sha1")
