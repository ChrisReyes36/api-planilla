<?php

namespace App\Http\Controllers\Tool;

use App\Http\Controllers\Controller;

class ToolFormatExcelController extends Controller
{
  //función static para exportar data a excel según tipo de extensión
  public static function formatAccountingStatic()
  {
    return '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(@_)';
  }
  //función para exportar data a excel según tipo de extensión
  public static function formatAccounting()
  {
    return '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(@_)';
  }
}
