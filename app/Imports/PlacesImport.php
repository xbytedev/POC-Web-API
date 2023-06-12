<?php

namespace App\Imports;

use App\Models\Places;
use Maatwebsite\Excel\Concerns\ToModel;

class PlacesImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Places([
            "CSV_Id" => $row['Id'],
            "Name" => $row['Name'],
            "Category" => $row['Category'],
            "Attraction_Type" => $row['Attraction_Type'],
            "Region" => $row['Region'],
            "Rayon" => $row['Rayon'],
            "City" => $row['City'],
            "Address" => $row['Address'],
            "Website" => $row['Website'],
            "Telephone" => $row['Telephone'],
            "Email" => $row['Email'],
            "Latitude" => $row['Latitude'],
            "Longitude" => $row['Longitude']
        ]);
    }
}
