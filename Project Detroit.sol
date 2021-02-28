pragma solidity >=0.4.22 <0.7.0;

contract nng{
    

    
    struct lostPerson{
        string personName;
        string personAddress;
        string description;
        uint256 PhNumber;
        uint256 PAge;
        string status;
        string psname;
    }
    uint256 i;
    mapping (uint => lostPerson) File;

    
    function Complaint(string memory Person__Name, uint256 _Age_, string memory Person__Address, string memory Complaint__Description,string memory Status_ , uint256 Phone__Number, string memory ps_name ) public  {
        lostPerson memory Person;
        Person.personName=Person__Name;
        Person.PAge=_Age_;
        Person.personAddress=Person__Address;
        Person.description=Complaint__Description;
        Person.status = Status_;
        Person.PhNumber=Phone__Number;
        Person.psname= ps_name;
        i=Phone__Number;
        File[i] = Person;
        

    }

    function Data (uint256 i ) public view returns (string memory Person_Name, uint256 Age, string memory Person_Address, string memory Complaint_Description, string memory _Status_, uint256 Phone_Number, string memory PoliceStationName) 
    {
        lostPerson memory Person= File[i];
        Person_Name = Person.personName;
        Age=Person.PAge;
        Person_Address=Person.personAddress;
        Complaint_Description=Person.description;
        _Status_= Person.status;
        Phone_Number=Person.PhNumber;

        
        
        return (Person_Name, Age,Person_Address, Complaint_Description,_Status_,Phone_Number,PoliceStationName);
    }

}
