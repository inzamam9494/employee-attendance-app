import 'package:attendence/attendance_app/screens/authentication/login_page.dart';
import 'package:attendence/attendance_app/screens/home/home_page.dart';
import 'package:get/get.dart';


import '../screens/bottom_bar.dart';
import '../screens/home/add_employee_details.dart';
import '../screens/home/company_details_page/add_branch.dart';
import '../screens/home/company_details_page/company_details_page.dart';
import '../screens/home/company_details_page/upgrade_now.dart';
import '../screens/home/company_reports_page/attendance/attendance_summary_report.dart';
import '../screens/home/company_reports_page/attendance/daily_attendance_report.dart';
import '../screens/home/company_reports_page/attendance/detail_attendance_report.dart';
import '../screens/home/company_reports_page/attendance/late_arrival_report.dart';
import '../screens/home/company_reports_page/attendance/leave_report.dart';
import '../screens/home/company_reports_page/attendance/overtime_report.dart';
import '../screens/home/company_reports_page/company_report_page.dart';
import '../screens/home/company_reports_page/employee_list_report.dart';
import '../screens/home/company_reports_page/notes_report.dart';
import '../screens/home/company_reports_page/payroll/loan_reports.dart';
import '../screens/home/company_reports_page/payroll/pay_slips.dart';
import '../screens/home/company_reports_page/payroll/provident_fund_challan_report.dart';
import '../screens/home/company_reports_page/payroll/salary_sheet.dart';
import '../screens/home/company_reports_page/payroll/tax_deducted_at_source_report.dart';
import '../screens/home/edit_attendance_page.dart';
import '../screens/home/notification_page/notification_page.dart';
import '../screens/home/pending_request/pending_requests_page.dart';
import '../screens/salary/pay_slips_salary_page.dart';
import '../screens/salary/payment_history_salary_page.dart';
import '../screens/salary/salary_page.dart';
import '../screens/salary/salary_settings_page.dart';
import '../screens/salary/save_payment_salary_page.dart';
import '../screens/salary/total_salary_page.dart';
import '../screens/settings/attendance_and_leaves/attendance_and_leaves.dart';
import '../screens/settings/buisness_contact/business_contact.dart';
import '../screens/settings/more_settings/more_settings.dart';
import '../screens/settings/settings_page.dart';
import '../screens/settings/user_permission/user_and_permissions.dart';
import '../screens/settings/vip_membership/vip_membership.dart';
import '../screens/settings/wallet_page.dart';

class ApplicationPages {

  static const loginPage = '/';
  static const bottomBar = '/bottomBar';

  static const homePage = '/homePage';
  static const addEmployeeDetails = '/addEmployeeDetails';
  static const companyDetailsPage = '/companyDetailsPage';
  static const editAttendancePage = '/editAttendancePage';
  static const pendingRequestsPage = '/pendingRequestsPage';
  static const companyReportPage = '/companyReportPage';
  static const notificationPage = '/notificationPage';
  static const addBranch = '/addBranch';

  static const salaryPage = '/salaryPage';
  static const totalSalaryPage = '/totalSalaryPage';
  static const savePaymentSalaryPage = '/savePaymentSalaryPage';
  static const paySlipsSalaryPage = '/paySlipsSalaryPage';
  static const paymentHistorySalaryPage = '/paymentHistorySalaryPage';
  static const salarySettingsPage = '/salarySettingsPage';

  static const settingPage = '/settingPage';
  static const vipMembership = '/vipMembership';
  static const walletPage = '/walletPage';
  static const userAndPermissions = '/userAndPermissions';
  static const attendanceAndLeaves = '/attendanceAndLeaves';
  static const businessContact = '/businessContact';
  static const moreSettings = '/moreSettings';

  static const attendanceSummaryReport = '/attendanceSummaryReport';
  static const detailAttendanceReport = '/DetailAttendanceReport';
  static const dailyAttendanceReport = '/dailyAttendanceReport';
  static const lateArrivalReport = '/lateArrivalReport';
  static const leaveReport = '/leaveReport';
  static const overtimeReport = '/overtimeReport';
  static const paySlips = '/paySlips';
  static const salarySheet = '/salarySheet';
  static const loanReport = '/loanReport';
  static const providentFundChallanReport = '/providentFundChallanReport';
  static const taxDeductedAtSourceReport = '/taxDeductedAtSourceReport';
  static const notesReport = '/notesReport';
  static const employeeListReport = '/employeeListReport';
  static const upgradeNow = '/upgradeNow';



  static List<GetPage>? getApplicationPages() =>
      [
        GetPage(name: loginPage, page: () => const LoginPage()),
        GetPage(name: bottomBar, page: () => const MyBottomBar()),

        GetPage(name: homePage, page: () => const HomePage()),
        GetPage(name: addEmployeeDetails, page: () => const AppEmployeeDetails()), //FIXME Using GetX controller
        GetPage(name: companyDetailsPage, page: () => const CompanyDetailsPage()),
        GetPage(name: editAttendancePage, page: () => const EditAttendancePage()),
        GetPage(name: pendingRequestsPage, page: () => const PendingRequestsPage()),
        GetPage(name: companyReportPage, page: () => const CompanyReportPage()),
        GetPage(name: notificationPage, page: () => const NotificationPage()),
        GetPage(name: addBranch, page: () => const AddBranch()),

        GetPage(name: salaryPage, page: () => const SalaryPage()),
        GetPage(name: totalSalaryPage, page: () => TotalSalaryPage()),
        GetPage(name: savePaymentSalaryPage, page: () => const SavePaymentSalaryPage()),
        GetPage(name: savePaymentSalaryPage, page: () => const SavePaymentSalaryPage()),
        GetPage(name: paySlipsSalaryPage, page: () => const PaySlipsSalaryPage()),
        GetPage(name: paymentHistorySalaryPage, page: () => const PaymentHistorySalaryPage()),
        GetPage(name: salarySettingsPage, page: () => const SalarySettingsPage()),

        GetPage(name: settingPage, page: () => const SettingsPage()),
        GetPage(name: vipMembership, page: () => const VipMembership()),
        GetPage(name: walletPage, page: () => const WalletPage()),
        GetPage(name: userAndPermissions, page: () => const UserAndPermissions()),
        GetPage(name: attendanceAndLeaves, page: () => const AttendanceAndLeaves()),
        GetPage(name: businessContact, page: () => const BusinessContact()),
        GetPage(name: moreSettings, page: () => const MoreSettings()),
        GetPage(name: upgradeNow, page: () => UpgradeNow()),

        //TODO All Reports Pages
        GetPage(name: attendanceSummaryReport, page: () => const AttendanceSummaryReport()),
        GetPage(name: detailAttendanceReport, page: () => const DetailAttendanceReport()),
        GetPage(name: dailyAttendanceReport, page: () => const DailyAttendanceReport()),
        GetPage(name: lateArrivalReport, page: () => const LateArrivalReport()),
        GetPage(name: leaveReport, page: () => const LeaveReport()),
        GetPage(name: overtimeReport, page: () => const OvertimeReport()),

        GetPage(name: paySlips, page: () => const PaySlips()),
        GetPage(name: salarySheet, page: () => const SalarySheet()),
        GetPage(name: loanReport, page: () => const LoanReport()),
        GetPage(name: providentFundChallanReport, page: () => const ProvidentFundChallanReport()),
        GetPage(name: taxDeductedAtSourceReport, page: () => const TaxDeductedAtSourceReport()),
        GetPage(name: notesReport, page: () => const NotesReport()),
        GetPage(name: employeeListReport, page: () => const EmployeeListReport()),
      ];

}