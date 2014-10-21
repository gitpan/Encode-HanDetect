#!/usr/bin/perl
# $File: //member/autrijus/Encode-HanDetect/t/1-basic.t $ $Author: autrijus $
# $Revision: #1 $ $Change: 4051 $ $DateTime: 2003/01/30 22:34:14 $

use strict;
use Test::More tests => 4;

use_ok('Encode');
use_ok('Encode::HanDetect');
Encode::HanDetect->import('trad');

is(
    encode(big5 => decode('HanDetect', '�o�O�̫᪺�����A�ε��_�Ө����')),
    '�o�O�̫᪺�����A�ε��_�Ө����',
    'big5 detection',
);

is(
    encode(big5 => decode('HanDetect', '�������Ķ������Ž�����������')),
    '�o�O�̫᪺�檧�A�ε��_�Ө����',
    'gbk detection',
);

1;
