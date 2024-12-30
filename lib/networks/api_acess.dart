import 'package:eurogoods/features/auth/data/rx_signup/rx.dart';
import 'package:eurogoods/features/auth/model/sign_up_model.dart';
import 'package:rxdart/rxdart.dart';

SignupRx signupRx =
    SignupRx(empty: SignupModel(), dataFetcher: BehaviorSubject<SignupModel>());

// VerifyRX verifyRX = VerifyRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// SignInRx signInRx =
//     SignInRx(empty: SignInModel(), dataFetcher: BehaviorSubject<SignInModel>());

// PostEmailForOtpToForgetPassRX postEmailForOtpToForgetPassRX =
//     PostEmailForOtpToForgetPassRX(
//         empty: {}, dataFetcher: BehaviorSubject<Map>());

// PostOtpForForgetPassRX postOtpForForgetPassRX =
//     PostOtpForForgetPassRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// PostNewPassForForgetPassRX postNewPassForForgetPassRX =
//     PostNewPassForForgetPassRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// GetHowToUseBitWordRX getHowToUseBitWordRX =
//     GetHowToUseBitWordRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// PostLogoutRX postLogoutRX =
//     PostLogoutRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// GetProfileRx getProfileRx = GetProfileRx(
//     empty: ProfileModel(), dataFetcher: BehaviorSubject<ProfileModel>());

// PostProfileUpdateRx postProfileUpdateRx = PostProfileUpdateRx(
//     empty: ProfileModel(), dataFetcher: BehaviorSubject<ProfileModel>());

// GetPrivacyPolicyRX getPrivacyPolicyRX =
//     GetPrivacyPolicyRX(empty: {}, dataFetcher: BehaviorSubject<Map>());

// RemediationGroupRx remediationGroupRx = RemediationGroupRx(
//     empty: AllRemediationGroupModel(),
//     dataFetcher: BehaviorSubject<AllRemediationGroupModel>());

// GetVocabularyGroupsRx getVocabularyGroupsRx =
//     GetVocabularyGroupsRx(empty: {}, dataFetcher: BehaviorSubject<Map>());

// GetVocabularySingleGroupsRx getVocabularySingleGroupsRx =
//     GetVocabularySingleGroupsRx(
//         empty: VocabularySingleGroup(),
//         dataFetcher: BehaviorSubject<VocabularySingleGroup>());

// PostCurrectWordRx postCurrectWordRx =
//     PostCurrectWordRx(empty: {}, dataFetcher: BehaviorSubject<Map>());

// PostChangePassRx postChangePassRx =
//     PostChangePassRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
