﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel;
using System.Xml.Linq;
using System.Web;
using System.IO;
using System.ComponentModel.DataAnnotations;

namespace JobPortalLibrary.Employer
{
   public class EmployerUser
    {
        public int EmployerId { get; set; }

        public string EmployerName { get; set; }

        public string Employercode { get; set; }

        public string EmailId { get; set; }


        [RegularExpression("^[0-9]{10}$", ErrorMessage = "It must be contain 10 digits.")]
        [Required(ErrorMessage = "Contact Number Required")]
        public Int64 ContactNo { get; set; }
        public Int64 ContactNo1 { get; set; }

        public string Password { get; set; }

        public int isDelete { get; set; }

        public int CompanyId { get; set; }

        [RegularExpression("^[a-zA-Z]*( +[a-zA-Z.]*)*$", ErrorMessage = "It must be contain only letters. ")]
        [Required(ErrorMessage = "Company Name is required.")]
        public string CompanyName { get; set; }

        public string NoOfEmplees { get; set; }

        public string CompanyWebsite { get; set; }



        //[RegularExpression("^([a-zA-Z0-9_ .&'-]{10,500})$", ErrorMessage = "You can write upto 500 words only.")]
        //[Required]
        public string AboutCompany { get; set; }

        public int IndustryId { get; set; }

        public string Location { get; set; }

        public int Pincode { get; set; }

        public string CompanyLogo { get; set; }

        public string Portfolio { get; set; }

        public string Slogan { get; set; }

        public string Facebook { get; set; }

        public string Twitter { get; set; }

        public string LinkedIn { get; set; }

        public string Instagram { get; set; }

        public string Google { get; set; }

        [RegularExpression("^[a-zA-Z]*( +[a-zA-Z.]*)*$", ErrorMessage = "It must be contain only letters.")]
        [Required]
        public string OwnerName { get; set; }

        [RegularExpression("^[a-zA-Z]*( +[a-zA-Z.]*)*$", ErrorMessage = "It must be contain only letters.")]
        [Required(ErrorMessage = "HR Name is required.")]
        public string HRName { get; set; }

        [Required(ErrorMessage = "Company Email Required..!")]
        [RegularExpression("^([a-zA-Z0-9_ .@'-]{10,500})$")]
        public string HREmail { get; set; }

        public string Source { get; set; }

        public DateTime RegistrationDate { get; set; }

        public string IndustryName { get; set; }
        public List<EmployerUser> LTUser { get; set; }
        public string ComName{ get; set; }
        public string AboutCom { get; set; }
        public int pincodes { get; set; }
        public string OwName { get; set; }
        public string HrNam { get; set; }
        public string Hrmail { get; set; }
        public string ComMAIL { get; set; }
        public string HrNum { get; set; }
        public string NumberEmps { get; set; }

        //-------------------------------------------Mitali Start-----------------------------------------------------------//
        public string PostJobCode { get; set; }

        public string OpportunityType { get; set; }

        [RegularExpression("^[a-zA-Z]*( +[a-zA-Z.]*)*$", ErrorMessage = "It must be contain only letters. ")]
        [Required(ErrorMessage = "Job Title is required.")]
        [Display(Name = "Job Title")]

        public string JobTitle { get; set; }

        public int JobCategoryId { get; set; }

      
        public string JobDescription { get; set; }
        [Required(ErrorMessage = "Job Location is required.")]
        [Display(Name = "Job Location")]
        public string JobLocation { get; set; }
        [Required(ErrorMessage = "Address is required.")]
        [Display(Name = "Address")]

        public string Address { get; set; }
        
        public string JobType { get; set; }

        public string RequiredQualificationId { get; set; }

        public string WorkingShifts { get; set; }

        public string SalaryType { get; set; }

       

        public string SalaryRange { get; set; }

        public string Salary { get; set; }

        public string JobBenifitId { get; set; }

        public int CollectResume { get; set; }
        [RegularExpression("^[0-9]+[.]*[0-9]*[a-zA-Z]+$", ErrorMessage = "Total Experience is not valid. ")]
        [Required(ErrorMessage = "Total Experience is required.")]
        [Display(Name = " Total Experience")]
        public string TotalExperience { get; set; }
        [DataType(DataType.Date)]
        [Required(ErrorMessage = "Expected Joining Date is required.")]
        [Display(Name = "Expected Joining Date")]
        public DateTime ExpectedJoiningDate { get; set; }

        public DateTime ApplicationStartDate { get; set; }
        [DataType(DataType.Date)]
        //[Required(ErrorMessage = "Application End Date is required.")]
        //[Display(Name = "Application End Date")]
        public DateTime ApplicationEndDate { get; set; }

        public int StatusId { get; set; }

        public string RejectionReason { get; set; }
      
        public string RequireQualification { get; set; }
        [Required(ErrorMessage = "Job Benifit is required.")]
        [Display(Name = "Job Benifit")]
        public string JobBenifit { get; set; }

        [RegularExpression("^[a-zA-Z.]*( +[a-zA-Z]+)*$", ErrorMessage = "It must be contain only letters. ")]
        [Required(ErrorMessage = " HR name is required.")]
        [Display(Name = " Contact Person")]
        public string ContactPerson { get; set; }

        [Required(ErrorMessage = "Please select category.")]
        [Display(Name = "Job Category")]
        public string JobCategory { get; set; }

        public List<EmployerUser> Jobs { get; set; }

        public string[] AllLocation { get; set; }

        public string AllCompany { get; set; }

        public string AllJobBenifits { get; set; }

        [Required(ErrorMessage = "Please select Benefits.")]
        public string[] JobBenifitList { get; set; }

        [Required(ErrorMessage = "Please select Location.")]
        public string[] Locationlist { get; set; }

        [Required(ErrorMessage = "Please select Qualification.")]
        public string[] QualificationList { get; set; }


        public string Min { get; set; }
        //[Required(ErrorMessage = "Max Salary is required.")]
        //[Display(Name = "Job Location")]
        public string Max { get; set; }
        [RegularExpression("^[0-9]*$", ErrorMessage = "It must be contain only digits.")]
        [Display(Name = "No.Of Openings")]
        [Required]
        public string NoOfOpenings { get; set; }

        public string From { get; set; }

        public string To { get; set; }

        //------------------Edit------------------//

       
        public string ContactPerson1 { get; set; }

        public string JobTitle1 { get; set; }

        public string Address1 { get; set; }

        public string NoOfOpenings1 { get; set; }

        public string TotalExperience1 { get; set; }

        //----------------------------------------------------------------Mitali End---------------------------------------------------------//
        public int AppliedJobId { get; set; }

        public string Seekercode { get; set; }

        public int InterviewId { get; set; }

        public int RoundId { get; set; }

        public string Comment { get; set; }

        public string RoundName { get; set; }

        public int ShareId { get; set; }

        public string Share { get; set; }

        public int CountryId { get; set; }

        public string Country { get; set; }

        public int StateId { get; set; }

        public string State { get; set; }

        public string City { get; set; }

        public int QualificationId { get; set; }

        public string Qualification { get; set; }

        public int DegreeId { get; set; }

        public string Degree { get; set; }

        public int SpecializationId { get; set; }

        public string Specialization { get; set; }

        public string Language { get; set; }

        public string Status { get; set; }

        public string SkillName { get; set; }

        //---mahesh property------//
        public int ApplicationReceived { get; set; }
        public List<EmployerUser> joblist { get; set; }
        public string Actions { get; set; }
        public string SeekerName { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Eligible { get; set; }
        public int Aprove { get; set; }
        public int Reject { get; set; }
    
        public Int64 Alternativecontact { get; set; }
        public string FullName { get; set; }
        public DateTime DOB { get; set; }
        public string Education { get; set; }
        public List<EmployerUser> Educationlist { get; set; }
        public string Univercity { get; set; }
        public string ViewResume { get; set; }

  
        public string Resume { get; set; }
        // public HttpPostedFileBase myFile { get; set; }
        public int HSC { get; set; }
        public int HSCBoard { get; set; }
        public int SSC { get; set; }
        public int SSCBoard { get; set; }
        //---mahesh property------//

        public string ExpectedJoiningDate1 { get; set; }

        public string ApplicationEndDate1 { get; set; }
        public string ADate { get; set; }
        //------------------------------------------Kartik Start-------------------------------------//
       
        
        //[Required(ErrorMessage = "Company Email Required..!")]
        //[RegularExpression("^([a-zA-Z0-9_ .@'-]{10,500})$")]
        public string CompanyEmail { get; set; }
        public string CityId { get; set; }

        //[RegularExpression("^[0-9]*$", ErrorMessage = "It must be contain only digits.")]
        //[Required(ErrorMessage = "HR Number is required.")]
        public string HRNumber { get; set; }


        //[Required(ErrorMessage = "No.Of Employees Required..!")]
        //[RegularExpression("^[0-9]*$", ErrorMessage = "It must be contain only digits.")]
        public string NoOfEmployees { get; set; }
        //------------------------------------------Kartik End---------------------------------------//
        //------------------------------------------sachin Start-------------------------------------//
        public List<EmployerUser> ListUser { get; set; }
        public string ResumePDF { get; set; }
        public int CityId1 { get; set; }
        public string Profilesummary { get; set; }
        //------------------------------------------sachin End---------------------------------------//
        //------------------------------------------Ashish Start---------------------------------------//
        public string JobSeekerName { get; set; }
        public List<EmployerUser> LstUser { get; set; }
        public string SeekerEmail { get; set; }

        [DataType(DataType.Time)]
        [Display(Name = "Start Time")]
        public TimeSpan StartTime { get; set; }

        [DataType(DataType.Time)]
        [Display(Name = "End Time")]
        public TimeSpan EndTime { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Interview Date")]
        public DateTime InterviewDate { get; set; }

        public string InterviewAddress { get; set; }

        public string Applycodelist { get; set; }
        public string InterviewType { get; set; }
        public string SubscriptionName { get; set; }
        public string Benefits { get; set; }
        public string SubscriptionDuration { get; set; }
        public string SubscriptionDetails { get; set; }
        public Int64 PlanPricing { get; set; }
        public int Offer { get; set; }
        public Int64 OfferedPrice { get; set; }
        public int SubscriptionId { get; set; }
        //------------------------------------------sachin End---------------------------------------//

        public string applicationend { get; set; }
        public string applicationjoin { get; set; }
        public string message { get; set; }
        //////////----------------Rita-----------//
        public DateTime SubscriptionDate { get; set; }
        public string Plans { get; set; }
        public string PlanPrice { get; set; }
        public List<EmployerUser> Users { get; set; }
        public string GSTNo { get; set; }
        public string TransactionId { get; set; }
          public string PaymentMode { get; set; }
        public DateTime PaymentDate { get; set; }
        //////////----------------Rita End-----------//
        public int Month { get; set; }
        public string Activemember { get; set; }

    }
}
