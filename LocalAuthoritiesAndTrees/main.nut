require("version.nut");

class MainClass extends GSController {
    constructor(){}
}

function MainClass::Start(){
    GSController.Sleep(1);

    const ratingDrop = 7;   //How much your rating drops when you remove trees

    local allTiles = GSTileList();
    local tilesWithTrees = GSTileList();
    local tilesWithTreesBefore = GSTileList();

    for(local x = 0; x < GSMap.GetMapSizeX(); x++){
        for(local y = 0; y < GSMap.GetMapSizeY(); y++){
            local tile = GSMap.GetTileIndex(x, y);
            if(GSMap.IsValidTile(tile) && GSTown.IsValidTown(GSTile.GetTownAuthority(tile))){
                allTiles.AddTile(tile);
            }
        }
    }

    while(true){
        while(GSEventController.IsEventWaiting()){
            local ev = GSEventController.GetNextEvent();
        }

        for(local tile = allTiles.Begin(); !allTiles.IsEnd(); tile = allTiles.Next()){
            local town = GSTile.GetTownAuthority(tile);
            local company = GSTile.GetOwner(tile);
            if(GSTown.IsValidTown(town) && company != GSCompany.COMPANY_INVALID && !GSTile.HasTreeOnTile(tile) && tilesWithTreesBefore.HasItem(tile)){
                GSTown.ChangeRating(town, company, 35 - ratingDrop);
                tilesWithTreesBefore.RemoveTile(tile);
            }
        }

        for(local tile = allTiles.Begin(); !allTiles.IsEnd(); tile = allTiles.Next()){
            if(GSTile.HasTreeOnTile(tile)){
                tilesWithTrees.AddTile(tile);
                tilesWithTreesBefore.AddTile(tile);
            }
            else{
                if(!tilesWithTrees.HasItem(tile)){
                    tilesWithTreesBefore.RemoveTile(tile);
                }
                tilesWithTrees.RemoveTile(tile);
            }
        }
    }
}

function MainClass::Save(){
    return {};
}

function MainClass::Load(version, tbl){}
