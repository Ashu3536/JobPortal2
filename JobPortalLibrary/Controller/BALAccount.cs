﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using JobPortalLibrary.Controller;
using System.Configuration;

namespace JobPortalLibrary.Controller
{
    public class BALAccount
    {



        //  SqlConnection con = new SqlConnection("Data Source=DESKTOP-B3UBKFN;Initial Catalog=\"JobPortal\";Integrated Security=True");
        static string CS = ConfigurationManager.ConnectionStrings["RSJP"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        public void ManageConnection()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            //else
            //{
            //    con.Close();
            //}
        }

        //--------------------------------------Saurabh Start--------------------------------//
        public void SeekerRegister(AccountUser objaccount)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "SeekerRegister");
            cmd.Parameters.AddWithValue("@Seekercode", objaccount.Seekercode);
            cmd.Parameters.AddWithValue("@SeekerName", objaccount.SeekerName);
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId);
            cmd.Parameters.AddWithValue("@Password", objaccount.Password);
            cmd.Parameters.AddWithValue("@ContactNo", objaccount.ContactNo);
            cmd.Parameters.AddWithValue("@ResumePDF", objaccount.ResumePDF);
            cmd.Parameters.AddWithValue("@DateOfRegistration", objaccount.DateOfRegistration);
            cmd.ExecuteNonQuery();
          
        }
        public void EmployeerRegister(AccountUser objaccount)
        {
            try
            {
                ManageConnection();
                SqlCommand cmd = new SqlCommand("SPSeeker", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@flag", "EmployeerRegister");
                cmd.Parameters.AddWithValue("@EmployerCode", objaccount.Employercode);
                cmd.Parameters.AddWithValue("@EmployerName", objaccount.SeekerName);
                cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId);
                cmd.Parameters.AddWithValue("@Password", objaccount.Password);
                cmd.Parameters.AddWithValue("@ContactNo", objaccount.ContactNo);
                // cmd.Parameters.AddWithValue("@ContactNo", Dateofregistration);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }
        public SqlDataReader SeekerCode()
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "SeekerCode");
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
           
        }
        public SqlDataReader EmployeerCode()
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "EmployeerCode");
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
           
        }
        public void EducationDetails(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "EducationDetails");
            cmd.Parameters.AddWithValue("@Seekercode", objaccount.Seekercode);
            cmd.ExecuteNonQuery();
            
        }
        public void EmploymentDetails(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "EmploymentDetails");
            cmd.Parameters.AddWithValue("@Seekercode", objaccount.Seekercode);
            cmd.ExecuteNonQuery();
            
        }
        public void ProjectDetails(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "ProjectDetails");
            cmd.Parameters.AddWithValue("@Seekercode", objaccount.Seekercode);
            cmd.ExecuteNonQuery();
            
        }
        public void JobAlertSave(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "JobAlertSave");
            cmd.Parameters.AddWithValue("@Seekercode", objaccount.Seekercode);
            cmd.ExecuteNonQuery();
           
        }
        public SqlDataReader Adminemail(AccountUser objaccount)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "Adminemail");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }
        //--------------------------------------Saurabh End--------------------------------//


        //--------------------------------------Muskan Start--------------------------------//


        //--------------------seekerlogin-------------------------------------------------------
        public SqlDataReader Login(AccountUser objaccount)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "LoginSeeker");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId1);
            cmd.Parameters.AddWithValue("@Password", objaccount.Password1);

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }

        //--------------------employerlogin---------------------------------------------------
        public SqlDataReader LoginEmp(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("Employeer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "LoginEmployer");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId1);
            cmd.Parameters.AddWithValue("@Password", objaccount.Password1);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }
        //--------------------Adminlogin---------------------------------------------------
        public SqlDataReader LoginAdmin(AccountUser objaccount)
        {
            con.Close();
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPAdmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "Loginadmin");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId1);
            cmd.Parameters.AddWithValue("@Password", objaccount.Password1);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }
        //--------------------forgetpasswordseeker-------------------------------------------------
        public SqlDataReader forgetpasswords(AccountUser objaccount)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "ForgetPasswordseek");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }
        //--------------------forgetpasswordemployer-------------------------------------------------
        public SqlDataReader forgetpasswordE(AccountUser objaccount)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "ForgetPasswordemp");
            cmd.Parameters.AddWithValue("@EmailId", objaccount.EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }
        public SqlDataReader ExternalLogin(string EmailId)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "CheckExternalLogin");
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
          
        }
        //--------------------signinwithgoogle(ExternalRegisterSeeker)-----------------------------
        public void ExternalRegister(string Seekercode, string name, string email, DateTime Dateofregistration)
        {

            ManageConnection();

            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "RegisterExternalLogin");
            cmd.Parameters.AddWithValue("@Seekercode", Seekercode);
            cmd.Parameters.AddWithValue("@SeekerName", name);
            cmd.Parameters.AddWithValue("@EmailId", email);
            cmd.Parameters.AddWithValue("@DateOfRegistration", Dateofregistration);
            cmd.ExecuteNonQuery();
           
        }
        public SqlDataReader ExternalLogine(string EmailId)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("Employeer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "CheckExternalLoginE");
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            
        }

        //--------------------externalRegisterEmployer---------------------------------------------------
        public void ExternalRegisterEmp(string Employercode, string EmployerName, string EmailId, string Password, Int64 ContactNo)
        {
            ManageConnection();
            SqlCommand cmd = new SqlCommand("Employeer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "RegisterExternalLoginEmp");
            cmd.Parameters.AddWithValue("@EmployeerCode", Employercode);
            cmd.Parameters.AddWithValue("@EmployerName", EmployerName);
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@ContactNo", ContactNo);

            cmd.ExecuteNonQuery();
           
        }

        public SqlDataReader forgetpasswords(string EmailId)
        {

            ManageConnection();
            SqlCommand cmd = new SqlCommand("SPSeeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "ForgetPasswordseek");
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
          
        }

        public SqlDataReader forgetpasswordE(string EmailId)
        {

            ManageConnection();
            SqlCommand cmd = new SqlCommand("Employeer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "ForgetPasswordemp");
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
          
        }
    }
}
