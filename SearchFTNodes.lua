-- Searches fast travel nodes
function SearchFTNodes(searchStr)
	local found=false;
	d("Searching fast travel nodes for \""..searchStr.."\".")
	for i = 1, 200, 1 do
		local nameStr=select(2, GetFastTravelNodeInfo(i));
		if(string.match(nameStr, searchStr)) then
			d("Found \""..nameStr.."\" at "..i..".")
			found=true;
		end
	end
	if(found) then
		d("Done.")
	else
		d("No results.")
	end
end
SearchFTNodes("Khenarthi's Roost")
