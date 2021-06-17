function validate()
{
	var at = document.formBnb.Email.value.indexOf("@");
	if(document.formBnb.Name.value == "")
	{
		alert("Please enter your Name");
		return false;
	}
	else if(document.formBnb.Age.selectedIndex == 0)
	{
		alert("Please enter your age.");
		return false;
	}
	else if(at < 1)
	{
		alert("Please enter a valid email address");
		return false;
	}
	else if (!document.formBnb.continent[0].checked &&
	!document.formBnb.continent[1].checked &&
	!document.formBnb.continent[2].checked &&
	!document.formBnb.continent[3].checked &&
	!document.formBnb.continent[4].checked &&
	!document.formBnb.continent[5].checked &&
	!document.formBnb.continent[6].checked)
	{
		alert("Please select the continent in which you live.");
		return false;
	}
	else
	{
		alert("Thanks "+document.formBnb.Name.value+".");
		return true;
	}
}