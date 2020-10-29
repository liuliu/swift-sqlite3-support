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
        .define("DEFAULT_CACHE_SIZE", to: "128"),
        .define("DEFAULT_CKPTFULLFSYNC"),
        .define("DEFAULT_JOURNAL_SIZE_LIMIT", to: "32768"),
        .define("DEFAULT_PAGE_SIZE", to: "4096"),
        .define("DEFAULT_SYNCHRONOUS", to: "2"),
        .define("DEFAULT_WAL_SYNCHRONOUS", to: "1"),
        .define("ENABLE_API_ARMOR"),
        .define("ENABLE_COLUMN_METADATA"),
        .define("ENABLE_DBSTAT_VTAB"),
        .define("ENABLE_FTS3"),
        .define("ENABLE_FTS3_PARENTHESIS"),
        .define("ENABLE_FTS3_TOKENIZER"),
        .define("ENABLE_FTS4"),
        .define("ENABLE_FTS5"),
        .define("ENABLE_JSON1"),
        .define("ENABLE_LOCKING_STYLE", to: "1"),
        .define("ENABLE_PREUPDATE_HOOK"),
        .define("ENABLE_RTREE"),
        .define("ENABLE_SESSION"),
        .define("ENABLE_SNAPSHOT"),
        .define("ENABLE_SQLLOG"),
        .define("ENABLE_STMT_SCANSTATUS"),
        .define("ENABLE_UNKNOWN_SQL_FUNCTION"),
        .define("ENABLE_UPDATE_DELETE_LIMIT"),
        .define("HAS_CODEC_RESTRICTED"),
        .define("HAVE_ISNAN"),
        .define("MAX_LENGTH", to: "2147483645"),
        .define("MAX_MMAP_SIZE", to: "20971520"),
        .define("MAX_VARIABLE_NUMBER", to: "500000"),
        .define("OMIT_AUTORESET"),
        .define("OMIT_LOAD_EXTENSION"),
        .define("STMTJRNL_SPILL", to: "131072"),
        .define("SUBSTR_COMPATIBILITY"),
        .define("THREADSAFE", to: "2"),
        .define("USE_URI")
      ]
    )
  ]
)
