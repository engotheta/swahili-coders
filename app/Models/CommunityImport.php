<?php namespace App\Models;

use App\Models\Community;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Concerns\ToCollection;

class CommunityImport implements ToCollection,WithHeadingRow
{
    public function collection(Collection $rows)
    {
      
        foreach ($rows as $key => $row) {
            if(isset($row['name'])){
                Community::create([
                    "name" =>isset($row['name'])? $row['name'] : '',
                    "email" => isset($row['email'])? $row['email'] : '',
                    "phone" => isset($row['phone'])? $row['phone'] : '',
                    "website" =>isset($row['website'])? $row['website'] : '' ,  // empty
                    "region" =>isset($row['region'])? $row['region'] : '' ,  // empty
                    "active" =>isset($row['status'])? ((strpos(trim(strtolower($row['status'])), "active") !== false) ? 1:0) : 0, 
                    "category_id" => $GLOBALS['category_id'], 
                    // "date_of_application" =>isset($row['date_of_application'])? \PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject(intval($row['date_of_application'])) : '', 
                    // "date_of_license" =>isset($row['date_of_license'])? \PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject(intval($row['date_of_license']))->format('Y-m-d') : '', 
                    "country" =>isset($row['country'])? $row['country'] : '' , 
                ]);
             }
        }
    }
}



?>










