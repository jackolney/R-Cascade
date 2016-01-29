#' @title Call CareCascade Model
#'
#' This function calls the 'CareCascade' model. Various scenarios can be simulated by updating parameters.
#' @param s_pop Set the population size denominator (e.g. 10 = 1/10th population size of Kenya)
#' @param s_Hbct Set to '1' to implement 'HBCT' intervention.
#' @param s_Vct Set to '1' to implement 'Enhanced VCT' intervention.
#' @param s_HbctPocCd4 Set to '1' to implement 'HBCT (POC CD4)' intervention.
#' @param s_Linkage Set to '1' to implement 'Linkage' intervention.
#' @param s_VctPocCd4 Set to '1' to implement 'VCT POC CD4' intervention.
#' @param s_PreOutreach Set to '1' to implement 'Pre-ART Outreach' intervention.
#' @param s_ImprovedCare Set to '1' to implement 'Improved Care' intervention.
#' @param s_PocCd4 Set to '1' to implement 'POC CD4' intervention.
#' @param s_ArtOutreach Set to '1' to implement 'ART Outreach' intervention.
#' @param s_Adherence Set to '1' to implement 'Adherence' intervention.
#' @param s_ImmediateArt Set to '1' to implement 'Immediate ART' intervention.
#' @param s_UniversalTestAndTreat Set to '1' to implement 'Universal Test \& Treat' intervention.
#' @param s_Calibration Set to '1' to implement calibration version of 'HBCT' intervention.
#' @keywords HIV Care Cascade Mathematical Model Kenya
#' @export
#' @examples
#' # Simulate 'baseline' scenario with 1/1000th population.
#' Cascade(
#'  s_pop = 1000,
#'  s_Hbct = 0,
#'  s_Vct = 0,
#'  s_HbctPocCd4 = 0,
#'  s_Linkage = 0,
#'  s_VctPocCd4 = 0,
#'  s_PreOutreach = 0,
#'  s_ImprovedCare = 0,
#'  s_PocCd4 = 0,
#'  s_ArtOutreach = 0,
#'  s_Adherence = 0,
#'  s_ImmediateArt = 0,
#'  s_UniversalTestAndTreat = 0,
#'  s_Calibration = 0)
#' @useDynLib CareCascade

Cascade <- function(s_pop, s_Hbct, s_Vct, s_HbctPocCd4, s_Linkage, s_VctPocCd4, s_PreOutreach, s_ImprovedCare, s_PocCd4, s_ArtOutreach, s_Adherence, s_ImmediateArt, s_UniversalTestAndTreat, s_Calibration) {
    .Call('CallCascade', PACKAGE = 'CareCascade', s_pop, s_Hbct, s_Vct, s_HbctPocCd4, s_Linkage, s_VctPocCd4, s_PreOutreach, s_ImprovedCare, s_PocCd4, s_ArtOutreach, s_Adherence, s_ImmediateArt, s_UniversalTestAndTreat, s_Calibration)
}
