{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red24\green25\blue27;\red245\green246\blue249;
\red73\green49\blue222;\red65\green69\blue78;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c12157\c12941\c14118;\cssrgb\c96863\c97255\c98039;
\cssrgb\c36078\c30588\c89804;\cssrgb\c32157\c34118\c38039;}
\paperw11900\paperh16840\margl1440\margr1440\vieww34360\viewh21600\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 terraform \{\
  required_providers \{\
    aws = \{\
      source  = "hashicorp/aws"\
      version = "~> 4.16"\
    \}\
  \}\
\
  required_version = ">= 1.2.0"\
\}\
\
provider "aws" \{\
  region  = "us-west-2"\
\}\
\
\pard\pardeftab720\partightenfactor0

\f1\fs21\fsmilli10560 \cf3 \cb4 \strokec3 resource \cf5 \strokec5 "aws_s3_bucket"\strokec2  \strokec5 "b"\strokec2  \cf3 \strokec3 \{\cf5 \strokec2 \
  \cf6 \strokec6 bucket\cf5 \strokec2  \cf3 \strokec3 =\cf5 \strokec2  \strokec5 "my-tf-test-bucket"\strokec2 \
\
  \cf6 \strokec6 tags\cf5 \strokec2  \cf3 \strokec3 =\cf5 \strokec2  \cf3 \strokec3 \{\cf5 \strokec2 \
    \cf6 \strokec6 Name\cf5 \strokec2         \cf3 \strokec3 =\cf5 \strokec2  \strokec5 "My bucket"\strokec2 \
    \cf6 \strokec6 Environment\cf5 \strokec2  \cf3 \strokec3 =\cf5 \strokec2  \strokec5 "Dev"\strokec2 \
  \cf3 \strokec3 \}\cf5 \strokec2 \
\cf3 \strokec3 \}\cf5 \strokec2 \
\
\cf3 \strokec3 resource \cf5 \strokec5 "aws_s3_bucket_acl"\strokec2  \strokec5 "example"\strokec2  \cf3 \strokec3 \{\cf5 \strokec2 \
  \cf6 \strokec6 bucket\cf5 \strokec2  \cf3 \strokec3 =\cf5 \strokec2  aws_s3_bucket.b.id\
  \cf6 \strokec6 acl\cf5 \strokec2     \cf3 \strokec3 =\cf5 \strokec2  \strokec5 "private"\strokec2 \
\cf3 \strokec3 \}\cf5 \strokec5 \
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0 \cb1 \strokec2 \
\}\
}