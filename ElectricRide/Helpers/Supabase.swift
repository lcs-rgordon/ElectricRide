//
//  Supabase.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-30.
//

import Foundation
import Supabase

// Use live server at supabase.co
//
//let supabaseURL = URL(string: "https://yybjbuweyxwtmmyrvepr.supabase.co")!
//let supabase = SupabaseClient(
//    supabaseURL: supabaseURL,
//    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl5YmpidXdleXh3dG1teXJ2ZXByIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg2MzQ2ODgsImV4cCI6MjA2NDIxMDY4OH0.i-oZcMfzJ80O3nIf6HJg9NL5i8Mi4vQOSUfxQSnowQ4"
//)

// Local development
//
let supabaseURL = URL(string: "http://127.0.0.1:8000")!
let supabase = SupabaseClient(
    supabaseURL: supabaseURL,
    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE"
)
