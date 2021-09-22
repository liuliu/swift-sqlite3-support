// swift-tools-version:5.0
//
//  Package.swift
//  Perfect-sqlite3-support
//
//  Created by Kyle Jessup on 3/22/16.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

let package = Package(
  name: "SQLite3",
  products: [
    .library(name: "SQLite3", type: .static, targets: ["SQLite3"]),
  ],
  targets: [
    .target(
      name: "SQLite3",
      path: "Sources",
      sources: [
        "sqlite3.c",
      ],
      publicHeadersPath: "include",
      cSettings: [
        .define("HAVE_USLEEP"),
        .define("SQLITE_DQS", to: "0"),
        .define("SQLITE_DEFAULT_CACHE_SIZE", to: "128"),
        .define("SQLITE_DEFAULT_CKPTFULLFSYNC"),
        .define("SQLITE_DEFAULT_JOURNAL_SIZE_LIMIT", to: "32768"),
        .define("SQLITE_DEFAULT_PAGE_SIZE", to: "4096"),
        .define("SQLITE_DEFAULT_SYNCHRONOUS", to: "2"),
        .define("SQLITE_DEFAULT_WAL_SYNCHRONOUS", to: "1"),
        .define("SQLITE_ENABLE_API_ARMOR"),
        .define("SQLITE_ENABLE_COLUMN_METADATA"),
        .define("SQLITE_ENABLE_DBSTAT_VTAB"),
        .define("SQLITE_ENABLE_FTS3"),
        .define("SQLITE_ENABLE_FTS3_PARENTHESIS"),
        .define("SQLITE_ENABLE_FTS3_TOKENIZER"),
        .define("SQLITE_ENABLE_FTS4"),
        .define("SQLITE_ENABLE_FTS5"),
        .define("SQLITE_ENABLE_JSON1"),
        .define("SQLITE_ENABLE_MATH_FUNCTIONS"),
        .define("SQLITE_ENABLE_PREUPDATE_HOOK"),
        .define("SQLITE_ENABLE_RTREE"),
        .define("SQLITE_ENABLE_SESSION"),
        .define("SQLITE_ENABLE_SNAPSHOT"),
        .define("SQLITE_ENABLE_STMT_SCANSTATUS"),
        .define("SQLITE_ENABLE_UNKNOWN_SQL_FUNCTION"),
        .define("SQLITE_ENABLE_UPDATE_DELETE_LIMIT"),
        .define("SQLITE_HAS_CODEC_RESTRICTED"),
        .define("SQLITE_HAVE_ISNAN"),
        .define("SQLITE_MAX_LENGTH", to: "2147483645"),
        .define("SQLITE_MAX_MMAP_SIZE", to: "20971520"),
        .define("SQLITE_MAX_VARIABLE_NUMBER", to: "500000"),
        .define("SQLITE_OMIT_AUTORESET"),
        .define("SQLITE_OMIT_DEPRECATED"),
        .define("SQLITE_OMIT_PROGRESS_CALLBACK"),
        .define("SQLITE_OMIT_LOAD_EXTENSION"),
        .define("SQLITE_STMTJRNL_SPILL", to: "131072"),
        .define("SQLITE_SUBSTR_COMPATIBILITY"),
        .define("SQLITE_THREADSAFE", to: "2"),
        .define("SQLITE_USE_URI")
      ]
    )
  ]
)
