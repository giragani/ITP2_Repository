
################################# VARIABLES  #################################################
# browser =    "chrome"
# url_qa =   "http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tR0lSSUdBTlY="
##### Locators - XPaths  IDs, CSS ,Name,etc...COPY ISSUANCE OF BIRTH CERTIFICATE############################################
###########################################################################################
open_button = "css=#ToggleSlider[type='checkbox']"
close_success_button = "AlertSuccessCloseBtn"

################################Home Page  #################################################
application_home  =    "//a[@id='dashboard']"
ccr_link =            "//a[text()='Client Certificate Request']"
ccr_home_link =     "//a[text()='Client Certificate Request Home']"
request_entry_link =     "//a[text()='Request Entry']"

################################# Request Entry Screen ##############################
skip_button =     "Skip"
transaction_type_drowpdown =     "cmbCertificateType"
number_of_copies  =    "txtNoOfCopies"
next_button =   "//button[@id='proceed']"



application_home_page = {
"open_button": "css:#ToggleSlider[type='checkbox']",
"close_success_button": "AlertSuccessCloseBtn",
"application_home" : "//a[@id='dashboard']",
}
# def get_variables(args):
#     if args == 'application_home_page':
#         return 'application_home_page'
#     else:
#         return -1
