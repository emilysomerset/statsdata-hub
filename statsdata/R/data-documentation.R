#' Social Pressure to be Busy and Emotional Wellbeing
#'
#' A daily diary study examining how social pressure to appear busy relates to emotional wellbeing. Data were collected from 261 participants over approximately 7 days each, yielding 1,827 person-day observations. Participants reported daily busyness, positive affect, negative affect, anxiety, and depressive symptoms, alongside person-level demographics, socioeconomic status, Big Five personality traits, and emotional complexity measures. Ideal for teaching multilevel modeling, within-person centering, and longitudinal data analysis. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{participantID}{categorical. Participant ID}
#'   \item{day}{ordinal. Day (Ranges from 1 to 8)}
#'   \item{modifiedBusy}{continuous. Daily perceived social pressure to be busy (3-item)}
#'   \item{modifiedBusy_mn}{continuous. Person mean of modifiedBusy (between-person component)}
#'   \item{modifiedBusy_dev}{continuous. Person mean centred modifiedBusy (within-person component)}
#'   \item{fouritemBusy}{continuous. Daily perceived social pressure to be busy (4-item)}
#'   \item{fouritemBusy_mn}{continuous. Person mean of fouritemBusy (between-person component)}
#'   \item{fouritemBusy_dev}{continuous. Person mean centred fouritemBusy (within-person component)}
#'   \item{dayPA}{continuous. Daily positive affect}
#'   \item{dayNA}{continuous. Daily negative affect}
#'   \item{dayAnx}{continuous. Daily anxiety}
#'   \item{dayDep}{continuous. Daily depressive symptoms}
#'   \item{demogAge}{continuous. Age in years}
#'   \item{demogAge.c}{continuous. Age in years (Grand mean centered)}
#'   \item{demogSex}{binary. Gender (1 = Male, 0 = Female)}
#'   \item{demogRace}{binary. Race (0 = Chinese, 1 = non-Chinese)}
#'   \item{sesIncomeHousehold}{ordinal. Monthly household income}
#'   \item{sesIncomeHousehold.c}{continuous. Monthly household income (Grand mean centered)}
#'   \item{sesLadderCommunity}{ordinal. Subjective SES in community}
#'   \item{sesLadderCommunity.c}{continuous. Subjective SES in community (Grand mean centered)}
#'   \item{b5a}{continuous. Big 5 Agreeableness}
#'   \item{b5c}{continuous. Big 5 Conscientiousness}
#'   \item{b5e}{continuous. Big 5 Extraversion}
#'   \item{b5n}{continuous. Big 5 Neuroticism}
#'   \item{b5o}{continuous. Big 5 Open-mindedness}
#'   \item{b5a.c}{continuous. Big 5 Agreeableness (Grand mean centered)}
#'   \item{b5c.c}{continuous. Big 5 Conscientiousness (Grand mean centered)}
#'   \item{b5e.c}{continuous. Big 5 Extraversion (Grand mean centered)}
#'   \item{b5n.c}{continuous. Big 5 Neuroticism (Grand mean centered)}
#'   \item{b5o.c}{continuous. Big 5 Open-mindedness (Grand mean centered)}
#'   \item{emoComplexAcceptPersonal}{continuous. Acceptance of mixed emotions personal expectancies subscale}
#'   \item{emoComplexAcceptPersonal.c}{continuous. Acceptance of mixed emotions personal expectancies subscale (Grand mean centered)}
#'   \item{emoComplexAcceptSocial}{continuous. Acceptance of mixed emotions social expectancies subscale}
#'   \item{emoComplexAcceptSocial.c}{continuous. Acceptance of mixed emotions social expectancies subscale (Grand mean centered)}
#'   \item{emoComplexAcceptOverall}{continuous. Acceptance of mixed emotions}
#'   \item{emoComplexAcceptOverall.c}{continuous. Acceptance of mixed emotions (Grand mean centered)}
#'   \item{SEDAS_B_1}{ordinal. \[ITEM\] Daily perceived social pressure to be busy: Today, I felt a great deal of pressure from others to always be busy doing something productive}
#'   \item{SEDAS_B_2}{ordinal. \[ITEM\] Daily perceived social pressure to be busy: Today, people expected me to always be busy doing something productive}
#'   \item{SEDAS_B_3_REVERSED}{ordinal. \[ITEM\] Daily perceived social pressure to be busy: People valued me today, even though I was not always busy doing something productive (Reversed: 8 - original score)}
#'   \item{SEDAS_B_4}{ordinal. \[ITEM\] Daily perceived social pressure to be busy: People were disapproving of me not always being busy doing something productive}
#'   \item{NA_H_1}{ordinal. \[ITEM\] Negative affect: Angry}
#'   \item{NA_H_2}{ordinal. \[ITEM\] Negative affect: Hostile}
#'   \item{NA_H_3}{ordinal. \[ITEM\] Negative affect: Irritable}
#'   \item{NA_M_4}{ordinal. \[ITEM\] Negative affect: Nervous}
#'   \item{NA_M_5}{ordinal. \[ITEM\] Negative affect: Anxious}
#'   \item{NA_M_6}{ordinal. \[ITEM\] Negative affect: Tense}
#'   \item{NA_L_7}{ordinal. \[ITEM\] Negative affect: Dejected}
#'   \item{NA_L_8}{ordinal. \[ITEM\] Negative affect: Sad}
#'   \item{NA_L_9}{ordinal. \[ITEM\] Negative affect: Unhappy}
#'   \item{PA_H_1}{ordinal. \[ITEM\] Positive affect: Energetic}
#'   \item{PA_H_2}{ordinal. \[ITEM\] Positive affect: Enthusiastic}
#'   \item{PA_H_3}{ordinal. \[ITEM\] Positive affect: Excited}
#'   \item{PA_M_4}{ordinal. \[ITEM\] Positive affect: Happy}
#'   \item{PA_M_5}{ordinal. \[ITEM\] Positive affect: Cheerful}
#'   \item{PA_M_6}{ordinal. \[ITEM\] Positive affect: Pleasant}
#'   \item{PA_L_7}{ordinal. \[ITEM\] Positive affect: Calm}
#'   \item{PA_L_8}{ordinal. \[ITEM\] Positive affect: Content}
#'   \item{PA_L_9}{ordinal. \[ITEM\] Positive affect: Relaxed}
#'   \item{STAI_S_1}{ordinal. \[ITEM\] Anxiety: I feel upset today}
#'   \item{STAI_S_2}{ordinal. \[ITEM\] Anxiety: I feel anxious today}
#'   \item{STAI_S_3}{ordinal. \[ITEM\] Anxiety: I feel nervous today}
#'   \item{STAI_S_4}{ordinal. \[ITEM\] Anxiety: I am jittery today}
#'   \item{STAI_S_5}{ordinal. \[ITEM\] Anxiety: I feel over-excited and rattled today}
#'   \item{CES_D_R_1}{ordinal. \[ITEM\] Depression: I was bothered by things that usually don't bother me.}
#'   \item{CES_D_R_2}{ordinal. \[ITEM\] Depression: I had trouble keeping my mind on what I was doing.}
#'   \item{CES_D_R_3}{ordinal. \[ITEM\] Depression: I felt depressed.}
#'   \item{CES_D_R_4}{ordinal. \[ITEM\] Depression: I felt that everything I did was an effort.}
#'   \item{CES_D_R_5}{ordinal. \[ITEM\] Depression: I felt hopeful about the future. (Reversed)}
#'   \item{CES_D_R_6}{ordinal. \[ITEM\] Depression: I felt fearful.}
#'   \item{CES_D_R_7}{ordinal. \[ITEM\] Depression: My sleep was restless.}
#'   \item{CES_D_R_8}{ordinal. \[ITEM\] Depression: I was happy. (Reversed)}
#'   \item{CES_D_R_9}{ordinal. \[ITEM\] Depression: I felt lonely.}
#'   \item{CES_D_R_10}{ordinal. \[ITEM\] Depression: I could not get going.}
#'   \item{ECS_03}{ordinal. \[ITEM\] ECA: It is very important to me not to feel mixed emotions. (Reversed)}
#'   \item{ECS_04}{ordinal. \[ITEM\] ECA: I would always try to avoid feeling mixed emotions. (Reversed)}
#'   \item{ECS_05}{ordinal. \[ITEM\] ECA: I shouldn't feel mixed emotions. (Reversed)}
#'   \item{ECS_06}{ordinal. \[ITEM\] ECA: Feeling mixed emotions is normal.}
#'   \item{ECS_07}{ordinal. \[ITEM\] ECA: Feeling mixed emotions is an important part of life.}
#'   \item{ECS_08}{ordinal. \[ITEM\] ECA: It is important that others don't see me as a person with mixed emotions. (Reversed)}
#'   \item{ECS_09}{ordinal. \[ITEM\] ECA: Other people expect me not to feel mixed emotions. (Reversed)}
#'   \item{ECS_10}{ordinal. \[ITEM\] ECA: People like me less when I feel mixed emotions. (Reversed)}
#'   \item{ECS_11}{ordinal. \[ITEM\] ECA: I think society accepts people who feel mixed emotions.}
#'   \item{ECS_12}{ordinal. \[ITEM\] ECA: I think it is socially acceptable to feel mixed emotions.}
#'   \item{ECS_13}{ordinal. \[ITEM\] ECA: Society generally expects people not to feel mixed emotions. (Reversed)}
#'   \item{BFI_E_01}{ordinal. \[ITEM\] B5E: Tends to be quiet.}
#'   \item{BFI_A_02}{ordinal. \[ITEM\] B5A: Is compassionate, has a soft heart.}
#'   \item{BFI_C_03}{ordinal. \[ITEM\] B5C: Tends to be disorganized.}
#'   \item{BFI_N_04}{ordinal. \[ITEM\] B5N: Worries a lot.}
#'   \item{BFI_O_05}{ordinal. \[ITEM\] B5O: Is fascinated by art, music, or literature.}
#'   \item{BFI_E_06}{ordinal. \[ITEM\] B5E: Is dominant, acts as a leader.}
#'   \item{BFI_A_07}{ordinal. \[ITEM\] B5A: Is sometimes rude to others.}
#'   \item{BFI_C_08}{ordinal. \[ITEM\] B5C: Has difficulty getting started on tasks.}
#'   \item{BFI_N_09}{ordinal. \[ITEM\] B5N: Tends to feel depressed, blue.}
#'   \item{BFI_O_10}{ordinal. \[ITEM\] B5O: Has little interest in abstract ideas.}
#'   \item{BFI_E_11}{ordinal. \[ITEM\] B5E: Is full of energy.}
#'   \item{BFI_A_12}{ordinal. \[ITEM\] B5A: Assumes the best about people.}
#'   \item{BFI_C_13}{ordinal. \[ITEM\] B5C: Is reliable, can always be counted on.}
#'   \item{BFI_N_14}{ordinal. \[ITEM\] B5N: Is emotionally stable, not easily upset.}
#'   \item{BFI_O_15}{ordinal. \[ITEM\] B5O: Is original, comes up with new ideas.}
#'   \item{BFI_E_16}{ordinal. \[ITEM\] B5E: Is outgoing, sociable.}
#'   \item{BFI_A_17}{ordinal. \[ITEM\] B5A: Can be cold and uncaring.}
#'   \item{BFI_C_18}{ordinal. \[ITEM\] B5C: Keeps things neat and tidy.}
#'   \item{BFI_N_19}{ordinal. \[ITEM\] B5N: Is relaxed, handles stress well.}
#'   \item{BFI_O_20}{ordinal. \[ITEM\] B5O: Has few artistic interests.}
#'   \item{BFI_E_21}{ordinal. \[ITEM\] B5E: Prefers to have others take charge.}
#'   \item{BFI_A_22}{ordinal. \[ITEM\] B5A: Is respectful, treats others with respect.}
#'   \item{BFI_C_23}{ordinal. \[ITEM\] B5C: Is persistent, works until the task is finished.}
#'   \item{BFI_N_24}{ordinal. \[ITEM\] B5N: Feels secure, comfortable with self.}
#'   \item{BFI_O_25}{ordinal. \[ITEM\] B5O: Is complex, a deep thinker.}
#'   \item{BFI_E_26}{ordinal. \[ITEM\] B5E: Is less active than other people.}
#'   \item{BFI_A_27}{ordinal. \[ITEM\] B5A: Tends to find fault with others.}
#'   \item{BFI_C_28}{ordinal. \[ITEM\] B5C: Can be somewhat careless.}
#'   \item{BFI_N_29}{ordinal. \[ITEM\] B5N: Is temperamental, gets emotional easily.}
#'   \item{BFI_O_30}{ordinal. \[ITEM\] B5O: Has little creativity.}
#' }
#' @source Lua VYQ, Majeed NM, Leung AK, Hartanto A. (2022). A daily within-person investigation on the link between social expectancies to be busy and emotional wellbeing: the moderating role of emotional complexity acceptance. Cognition and Emotion, 1-8. https://doi.org/10.1080/02699931.2022.2054778
#' @name busy-wellbeing
NULL

#' Everyday Discrimination and Cognitive Failures (Singapore Daily Diary Study)
#'
#' A seven-day daily diary study examining the association between everyday discrimination and cognitive failures among 484 undergraduate students at Singapore universities (Study 1 from Majeed et al., 2023). Participants completed nightly questionnaires reporting daily discrimination experiences, cognitive failures, and daily stressor exposure, alongside person-level demographics and socioeconomic variables. Multilevel modelling revealed that experiencing discrimination was associated with poorer cognitive functioning at both within- and between-person levels, even after controlling for demographic covariates and daily stressor exposure. Ideal for teaching multilevel modelling, within-person centering, and the study of discrimination and cognitive health in a daily diary context. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{participantID}{categorical. Unique participant identifier}
#'   \item{day}{ordinal. Study day number (1 to 7)}
#'   \item{age}{continuous. Participant age in years}
#'   \item{age.c10}{continuous. Age centered at 10-year intervals}
#'   \item{female}{binary. Gender (1 = female, 0 = male)}
#'   \item{female.f}{categorical. Gender as factor (YES = female, NO = male)}
#'   \item{nonChinese}{binary. Ethnicity (0 = Chinese, 1 = non-Chinese)}
#'   \item{nonChinese.f}{categorical. Ethnicity as factor (YES = non-Chinese, NO = Chinese)}
#'   \item{sesInc}{ordinal. Household income bracket (1-6; higher values reflect higher household income)}
#'   \item{sesInc.c}{continuous. Grand mean centred household income}
#'   \item{sesLad}{ordinal. Subjective socioeconomic status in community (1 = lowest, 10 = highest)}
#'   \item{sesLad.c}{continuous. Grand mean centred community ladder}
#'   \item{discrimination}{continuous. Daily discrimination composite score (mean of 9 items)}
#'   \item{itemDisc1}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): You were treated with less courtesy or respect than other people}
#'   \item{itemDisc2}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): You received poorer service than other people at restaurants or stores}
#'   \item{itemDisc3}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): People acted as if they think you are not smart}
#'   \item{itemDisc4}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): People acted as if they are afraid of you}
#'   \item{itemDisc5}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): People acted as if they think you are dishonest}
#'   \item{itemDisc6}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): People acted as if they are better than you}
#'   \item{itemDisc7}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): You were called names or insulted}
#'   \item{itemDisc8}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): You were threatened or harassed}
#'   \item{itemDisc9}{ordinal. \[ITEM\] Discrimination (1=never, 4=often): You were followed around in stores}
#'   \item{dayCogFail}{continuous. Daily cognitive failures composite score (mean of 13 items)}
#'   \item{dayCogFail.m}{continuous. Person mean of dayCogFail (between-person component)}
#'   \item{itemDayCogFail01}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Did not notice signposts when driving/walking}
#'   \item{itemDayCogFail02}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Forgot the purpose of going somewhere}
#'   \item{itemDayCogFail03}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Failed to notice something pointed out to you}
#'   \item{itemDayCogFail04}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Accidentally threw away something you meant to keep}
#'   \item{itemDayCogFail05}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Daydreamed when you should have been concentrating}
#'   \item{itemDayCogFail06}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Forgot whether you had done something}
#'   \item{itemDayCogFail07}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Failed to read information properly before proceeding}
#'   \item{itemDayCogFail08}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Said something and later wondered if it made sense}
#'   \item{itemDayCogFail09}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Failed to take notice of something on first reading}
#'   \item{itemDayCogFail10}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Lost track of what you were saying mid-sentence}
#'   \item{itemDayCogFail11}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Forgot an important appointment}
#'   \item{itemDayCogFail12}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Had trouble concentrating on a task}
#'   \item{itemDayCogFail13}{count. \[ITEM\] Cognitive failure (0=never, 3=many times): Forgot where you had put something}
#'   \item{dayStressorExp}{binary. Daily stressor exposure (1 = experienced at least one stressor, 0 = none)}
#'   \item{dayStressorExp.m}{continuous. Person mean of dayStressorExp (between-person component)}
#'   \item{dayStressorExp.f}{categorical. Daily stressor exposure as factor (YES/NO)}
#'   \item{itemDayStressorArgue}{binary. \[ITEM\] Stressor (0=no, 1=yes): Had an argument or disagreement with someone}
#'   \item{itemDayStressorAvoid}{binary. \[ITEM\] Stressor (0=no, 1=yes): Avoided someone to prevent an argument}
#'   \item{itemDayStressorWork}{binary. \[ITEM\] Stressor (0=no, 1=yes): Had a work- or school-related stressor}
#'   \item{itemDayStressorHome}{binary. \[ITEM\] Stressor (0=no, 1=yes): Had a home- or family-related stressor}
#'   \item{itemDayStressorDiscrimination}{binary. \[ITEM\] Stressor (0=no, 1=yes): Experienced discrimination or prejudice}
#'   \item{itemDayStressorNetwork}{binary. \[ITEM\] Stressor (0=no, 1=yes): Had a problem with a friend or member of your social network}
#'   \item{itemDayStressorOther}{binary. \[ITEM\] Stressor (0=no, 1=yes): Experienced another stressor not listed above}
#' }
#' @source Majeed NM, Kasturiratna KS, Lua VY, Li MY, Hartanto A. (2023). Discrimination and cognitive failures in Singapore and the US: An investigation of between- and within-persons associations through multilevel modelling. International Journal of Intercultural Relations, 94, 101805. https://doi.org/10.1016/j.ijintrel.2023.101805
#' @name discrimination-cognitive
NULL

#' Epilepsy Seizure Counts (Progabide Trial)
#'
#' Longitudinal data from a clinical trial of the anti-epileptic drug progabide. Each of 59 patients was observed over 4 follow-up periods, with seizure counts recorded at each visit, alongside baseline seizure count and age. Commonly used to teach Poisson regression for count data with repeated measurements on the same subject. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{TRUE}{count. Number of seizures during the follow-up period}
#'   \item{trt}{categorical. Treatment group: placebo or progabide}
#'   \item{base}{count. Baseline seizure count (8 weeks prior to trial)}
#'   \item{age}{continuous. Patient age in years}
#'   \item{V4}{binary. Indicator for the 4th (final) follow-up period}
#'   \item{subject}{categorical. Patient identifier (1-59), repeated across 4 rows each}
#'   \item{period}{ordinal. Follow-up period number (1 to 4)}
#'   \item{lbase}{continuous. Log-transformed, centered baseline seizure count}
#'   \item{lage}{continuous. Log-transformed, centered age}
#' }
#' @source Thall and Vail (1990), distributed in the MASS R package
#' @name epilepsy-seizures
NULL

#' Friends with Health Benefits: Tandem vs. Individual Gym Incentives
#'
#' Data from a field experiment (N=774) testing whether rewarding gym attendance individually versus as a pair ("tandem") changes behavior. In the standard condition, participants earned a cash reward for each day they visited the gym. In the tandem condition, participants earned the same reward only if they visited the gym together with an assigned partner. Despite this extra hurdle, tandem-reward participants visited the gym about 35% more frequently than those in the standard condition. Data are in long format with weekly gym visit counts across a 10-week pre-intervention baseline, 4-week intervention period, and 2-week post-intervention follow-up. Ideal for teaching analysis of randomized experiments, repeated measures, and pre/post intervention designs. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{ppid}{categorical. Unique participant identifier}
#'   \item{pair}{categorical. Identifier linking paired participants in the tandem condition}
#'   \item{condition}{categorical. Assigned condition: standard (individual reward) or tandem (reward requires visiting with a partner)}
#'   \item{week_char}{categorical. Original week label (e.g. pre10, pre1, 1-4, post1, post2)}
#'   \item{week_visits}{count. Number of gym visits in that week}
#'   \item{any_visit}{binary. Indicator for whether the participant visited the gym at all that week}
#'   \item{week_num}{ordinal. Standardized week number: negative values are pre-intervention weeks (-10 to -1), 1-4 are intervention weeks, 5-6 are post-intervention weeks}
#'   \item{pre_intervention}{binary. Indicator for the pre-intervention baseline period (10 weeks)}
#'   \item{intervention}{binary. Indicator for the 4-week intervention period}
#'   \item{post_intervention}{binary. Indicator for the 2-week post-intervention follow-up period}
#'   \item{Gender}{binary. Participant gender}
#'   \item{medianexer}{categorical. Whether the participant's pre-intervention average gym usage was above/equal to or below the sample median}
#' }
#' @source Gershon R, Cryder C, Milkman K. Friends with health benefits.
#' @name gym-incentives
NULL

#' From Me to We: Generic Pronouns and Children's Judgments of Generosity (Experiment 2)
#'
#' Data from Experiment 2 of a study examining how subtle shifts in language perspective shape children's social judgments. A total of 100 children aged 6-9 years completed 8 trials in which a child speaker described classroom norms using either generic pronouns (we/you) or specific pronouns (referencing a named individual). Children judged whether the speaker was generous after each trial. The design is within-subjects for language type (generic vs. specific) and between-subjects for pronoun type (we vs. generic you), with counterbalancing via two presentation orders (A and B). Results showed children were more likely to judge speakers as generous when using generic pronouns, with stronger effects for we than generic you. Ideal for teaching multilevel logistic regression, mixed within- and between-subjects designs, and binary outcome analysis with repeated measures. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{ID}{categorical. Unique participant identifier}
#'   \item{age}{continuous. Participant exact age in years (range approximately 6-9)}
#'   \item{age_c}{continuous. Age mean-centered (age minus sample mean age)}
#'   \item{age_group}{ordinal. Age group in months (e.g., 67 = 67 months)}
#'   \item{Generic}{categorical. Between-subjects pronoun condition: We (generic we) or You (generic you)}
#'   \item{GenOrder}{categorical. Counterbalancing order: A (generic pronoun in Trials 1-4, specific in 5-8) or B (specific in Trials 1-4, generic in 5-8)}
#'   \item{Attribution}{ordinal. Attribution measure collected at end of session}
#'   \item{gender}{categorical. Participant gender (F = female, M = male)}
#'   \item{Trial}{ordinal. Trial number within the session (Trial 1 through Trial 8)}
#'   \item{Answer}{binary. Child's generosity judgment for the speaker on this trial (1 = generous, 0 = not generous)}
#'   \item{Language}{categorical. Language type used by the speaker on this trial: Generic (we or you pronoun) or Specific (named individual); derived from Trial number and GenOrder}
#' }
#' @source Orvell A, Simmons E, Umscheid V, Elli G, Gelman SA. From 'me' to 'we': How perspective shifts in language can shape children's judgments about kindness, caring, and inclusivity. Journal of Experimental Psychology: General.
#' @name me-to-we
NULL

#' Plant-Based vs. Meat-Based Fast Food: Yelp Review Sentiment Analysis
#'
#' A dataset of 3,915 Yelp reviews comparing consumer sentiment toward plant-based fast food menu items (e.g., "Impossible," "Beyond," "Sofritas") versus traditional meat-based controls (e.g., "Whopper," "Carnitas") within the same restaurant chains, spanning 7 fast-food chains and hundreds of unique locations. Reviews were scored using transformer-based sentiment analysis (RoBERTa) for sentiment valence, and a large language model extraction procedure flagged mentions of sensory attributes, texture, and environmental/ethical motivations. Using fixed-effects and linear mixed models to control for restaurant, user, and temporal heterogeneity, plant-based items were found to receive significantly higher star ratings (β=0.73) and more positive sentiment valence (β=0.33) than meat-based controls, an effect driven primarily by moral utility rather than superior sensory performance. Ideal for teaching mixed-effects models, text/sentiment data, and analysis of nested/clustered review data (reviews nested within users and within restaurant locations). 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{review_id}{categorical. A unique alphanumeric identifier assigned by Yelp to each individual review observation}
#'   \item{user_id}{categorical. A unique identifier for the Yelp user, used as a random intercept in mixed-effects models to control for individual reviewer stringency or bias}
#'   \item{business_id}{categorical. A unique identifier for the specific restaurant location, used to cluster standard errors and as a random intercept to account for store-level quality}
#'   \item{chain_key}{categorical. A standardized, case-insensitive categorical variable used as a fixed effect to represent the parent restaurant franchise}
#'   \item{chain_name}{categorical. The descriptive name of the restaurant chain (e.g., Burger King, Chipotle)}
#'   \item{city}{categorical. The geographic city of the restaurant location, used as a high-dimensional fixed effect to control for local market heterogeneity}
#'   \item{state}{spatial. The US state where the restaurant business is registered in the Yelp metadata}
#'   \item{stars}{ordinal. The primary dependent variable: consumer's ordinal rating of the experience on a 1-to-5 scale}
#'   \item{date}{date_time. Timestamp for the review (study window: January 1, 2010 to December 31, 2021)}
#'   \item{text}{text. The raw prose of the review used for hierarchical keyword classification and transformer-based sentiment inference}
#'   \item{useful}{count. Count of other users who voted the review as 'useful'}
#'   \item{funny}{count. Count of other users who voted the review as 'funny'}
#'   \item{cool}{count. Count of other users who voted the review as 'cool'}
#'   \item{item_label}{categorical. Categorical assignment identifying whether a review belongs to the plant-based 'target' group or the meat-based 'control' group}
#'   \item{target_canonical}{categorical. The specific plant-based term (e.g., 'impossible,' 'sofritas') detected in the text that triggered the target classification}
#'   \item{control_canonical}{categorical. The specific meat-based term (e.g., 'chicken,' 'steak') detected when no target keywords were present}
#'   \item{sent_label}{categorical. Discrete categorical sentiment output (Positive, Negative, or Neutral) from the RoBERTa sentiment classification model}
#'   \item{sent_score}{continuous. Probability or confidence level associated with the sentiment label, ranging from 0 to 1}
#'   \item{sent_valence}{continuous. Continuous sentiment metric derived from the label and score, ranging from -1.0 to +1.0; the primary textual dependent variable}
#'   \item{sensory_mention}{binary. Binary flag indicating presence of text related to physical food attributes (e.g., taste, flavor)}
#'   \item{texture_specific}{binary. Binary flag identifying reviews that specifically discuss texture or mouthfeel (e.g., crispy, rubbery)}
#'   \item{environmental_mention}{binary. Binary flag indicating mentions of sustainability, animal welfare, or ethical motivations; used to test the moral utility hypothesis}
#'   \item{target}{binary. Binary numeric representation of item_label (1 = Target/plant-based, 0 = Control/meat-based), used as the primary independent variable}
#'   \item{month}{date_time. Month and year of the review, used to control for seasonal shocks and longitudinal trends}
#' }
#' @source Healey, P.M. (2026). Plant-based vs. meat-based: a comparative sentiment analysis of consumer reviews in fast food settings. Food Quality and Preference, 144, 105995. https://doi.org/10.1016/j.foodqual.2026.105995
#' @name plantbased-meat-reviews
NULL

#' Titanic Passenger Survival
#'
#' Passenger-level data on the 1912 Titanic disaster, including age, sex, ticket class, and survival outcome. Widely used to introduce logistic regression, classification, and discussions of confounding. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{PassengerId}{continuous. Unique passenger identifier}
#'   \item{Survived}{binary. 0 = died, 1 = survived}
#'   \item{Pclass}{ordinal. Ticket class: 1 = first, 2 = second, 3 = third}
#'   \item{Name}{text. Passenger name}
#'   \item{Sex}{categorical. Passenger sex}
#'   \item{Age}{continuous. Age in years (some values missing)}
#'   \item{SibSp}{count. Number of siblings/spouses aboard}
#'   \item{Parch}{count. Number of parents/children aboard}
#'   \item{Ticket}{categorical. Ticket number}
#'   \item{Fare}{continuous. Passenger fare}
#'   \item{Cabin}{categorical. Cabin number (mostly missing)}
#'   \item{Embarked}{categorical. Port of embarkation: C, Q, or S}
#' }
#' @source Kaggle Titanic dataset, derived from Encyclopedia Titanica
#' @name titanic-survival
NULL

#' Virtual Reality vs. Video vs. Paper Business Case Studies: Learning Outcomes
#'
#' Data from a randomized experiment (N=148) comparing learning outcomes across three business case study formats: paper-based, video-based, and virtual reality (VR). Participants were randomly assigned to one condition and completed a business case study, then responded to measures of presence (IPQ), motivation (IMMS), task load (TLI), technology adoption intentions, and a knowledge recall quiz. VR participants demonstrated superior recall of both factual and visual details compared to paper and video conditions. Missingness in adoption items is structural: participants only rated adoption intentions for their assigned medium. Ideal for teaching one-way ANOVA, planned contrasts, structural missing data, and analysis of experimental between-subjects designs with multiple outcome measures. 
#'
#' @format A data frame with variables:
#' \describe{
#'   \item{Duration__in_seconds_}{continuous. Survey completion time in seconds}
#'   \item{ipq}{continuous. Igroup Presence Questionnaire composite score (sense of presence in the case environment)}
#'   \item{ipq1_1}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): I had a sense of being there in the case environment}
#'   \item{ipq1_2}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): Somehow I felt that the virtual world surrounded me}
#'   \item{ipq1_3}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): I felt like I was just perceiving pictures (reversed)}
#'   \item{ipq1_4}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): I did not feel present in the virtual space (reversed)}
#'   \item{ipq1_5}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): I had a sense of acting in the virtual space}
#'   \item{ipq1_6}{ordinal. \[ITEM\] IPQ (1=strongly disagree, 5=strongly agree): I felt present in the case}
#'   \item{ipq2}{ordinal. \[ITEM\] IPQ awareness of real world (1=not aware of real environment, 2=still paid attention, 3=completely captivated)}
#'   \item{ipq3_1}{ordinal. \[ITEM\] IPQ realism: How real did the case seem to you? (1=none at all, 5=completely)}
#'   \item{ipq3_2}{ordinal. \[ITEM\] IPQ realism: How real did the virtual world seem to you? (1=none at all, 5=completely)}
#'   \item{ipq4_1}{ordinal. \[ITEM\] IPQ involvement: How much did your experience in the case environment seem consistent with your real world experience? (1=not at all, 5=completely)}
#'   \item{imms}{continuous. Instructional Materials Motivation Survey composite score (motivation to engage with the case)}
#'   \item{imms_1}{ordinal. \[ITEM\] IMMS: When I first looked at this case, I had the impression that it would be easy for me}
#'   \item{imms_2}{ordinal. \[ITEM\] IMMS: This material was more difficult to understand than I would like it to be (reversed)}
#'   \item{imms_3}{ordinal. \[ITEM\] IMMS: After the case, I felt confident that I knew the material}
#'   \item{imms_4}{ordinal. \[ITEM\] IMMS: Much of the case had so much information that it was hard to pick out and remember important points (reversed)}
#'   \item{imms_5}{ordinal. \[ITEM\] IMMS: As I worked on this case, I was confident that I could learn the content}
#'   \item{imms_6}{ordinal. \[ITEM\] IMMS: The case was too difficult (reversed)}
#'   \item{imms_7}{ordinal. \[ITEM\] IMMS: After working on this case for a while, I was confident that I understood the material}
#'   \item{imms_8}{ordinal. \[ITEM\] IMMS: I could not really understand the material in this case (reversed)}
#'   \item{imms_9}{ordinal. \[ITEM\] IMMS: The good organization of the content helped me be confident I would learn this material}
#'   \item{imms_10}{ordinal. \[ITEM\] IMMS: There was something interesting at the beginning of the case that got my attention}
#'   \item{imms_11}{ordinal. \[ITEM\] IMMS: These materials are eye-catching}
#'   \item{imms_12}{ordinal. \[ITEM\] IMMS: The quality of the case helped to hold my attention}
#'   \item{imms_13}{ordinal. \[ITEM\] IMMS: This case is so abstract that it was hard to keep my attention on it (reversed)}
#'   \item{imms_14}{ordinal. \[ITEM\] IMMS: The case was dry and unappealing (reversed)}
#'   \item{imms_15}{ordinal. \[ITEM\] IMMS: The way the information is arranged on the pages helped me stay attentive}
#'   \item{imms_16}{ordinal. \[ITEM\] IMMS: This case has things that stimulated my curiosity}
#'   \item{imms_17}{ordinal. \[ITEM\] IMMS: The amount of repetition in this case caused me to get bored sometimes (reversed)}
#'   \item{imms_18}{ordinal. \[ITEM\] IMMS: I learned some things that were surprising or unexpected}
#'   \item{imms_19}{ordinal. \[ITEM\] IMMS: The variety of materials helped me stay attentive}
#'   \item{imms_20}{ordinal. \[ITEM\] IMMS: The style of the case is boring (reversed)}
#'   \item{imms_21}{ordinal. \[ITEM\] IMMS: There was so much content that it was hard to stay focused (reversed)}
#'   \item{imms_22}{ordinal. \[ITEM\] IMMS: Completing the case gave me a satisfying feeling of accomplishment}
#'   \item{imms_23}{ordinal. \[ITEM\] IMMS: I enjoyed this case so much that I would like to know more about this topic}
#'   \item{imms_24}{ordinal. \[ITEM\] IMMS: I really enjoyed studying this case}
#'   \item{imms_25}{ordinal. \[ITEM\] IMMS: It felt good to successfully complete this case}
#'   \item{imms_26}{ordinal. \[ITEM\] IMMS: It was a pleasure to work on such a well-designed case}
#'   \item{imms_27}{ordinal. \[ITEM\] IMMS: It is clear to me how the content of this case is related to things I already know}
#'   \item{imms_28}{ordinal. \[ITEM\] IMMS: Completing this case successfully was important to me}
#'   \item{imms_29}{ordinal. \[ITEM\] IMMS: The content of this case is relevant to my interests}
#'   \item{imms_30}{ordinal. \[ITEM\] IMMS: The content in this case will be useful to me}
#'   \item{imms_31}{ordinal. \[ITEM\] IMMS: This case was not relevant to my needs (reversed)}
#'   \item{imms_32}{ordinal. \[ITEM\] IMMS: I could relate the content of this case to things I have seen in my own life}
#'   \item{imms_33}{ordinal. \[ITEM\] IMMS: The content of this case will be useful in my future career}
#'   \item{tli}{continuous. Task Load Index composite score (perceived cognitive load during the case)}
#'   \item{tli1_1}{ordinal. \[ITEM\] TLI: Mental demand while participating in the case (1=low, 5=high)}
#'   \item{tli1_2}{ordinal. \[ITEM\] TLI: Physical demand while participating in the case (1=low, 5=high)}
#'   \item{tli1_3}{ordinal. \[ITEM\] TLI: Temporal demand (time pressure) while participating in the case (1=low, 5=high)}
#'   \item{tli1_4}{ordinal. \[ITEM\] TLI: Effort required while participating in the case (1=low, 5=high)}
#'   \item{tli1_5}{ordinal. \[ITEM\] TLI: Frustration while participating in the case (1=low, 5=high)}
#'   \item{tli2}{ordinal. \[ITEM\] TLI: Self-rated performance during the case (1=low, 5=high)}
#'   \item{condition}{categorical. Assigned case medium: 0=paper, 1=video, 2=VR (from administrative data)}
#'   \item{condition_survey}{categorical. Self-reported case medium: 1=paper, 2=video, 3=VR (from survey)}
#'   \item{cond_paper}{binary. Indicator for paper condition}
#'   \item{cond_video}{binary. Indicator for video condition}
#'   \item{cond_vr}{binary. Indicator for VR condition}
#'   \item{paperadopt1_1}{ordinal. \[ITEM\] Paper adoption - usefulness (1=strongly disagree, 5=strongly agree): Using paper-based cases improves my learning performance}
#'   \item{paperadopt1_2}{ordinal. \[ITEM\] Paper adoption - usefulness: I find paper-based cases to be useful for learning}
#'   \item{paperadopt1_3}{ordinal. \[ITEM\] Paper adoption - usefulness: Studying with paper-based cases enhances my learning effectiveness}
#'   \item{paperadopt1_4}{ordinal. \[ITEM\] Paper adoption - usefulness: Paper-based cases help me learn business concepts more quickly}
#'   \item{paperadopt1_5}{ordinal. \[ITEM\] Paper adoption - usefulness: I believe that using paper-based cases is beneficial for my education}
#'   \item{paperadopt2_1}{ordinal. \[ITEM\] Paper adoption - ease of use: I think learning to use paper-based cases is easy}
#'   \item{paperadopt2_2}{ordinal. \[ITEM\] Paper adoption - ease of use: I find paper-based cases easy to interact with}
#'   \item{paperadopt2_3}{ordinal. \[ITEM\] Paper adoption - ease of use: I believe I can efficiently use paper-based cases}
#'   \item{paperadopt2_4}{ordinal. \[ITEM\] Paper adoption - ease of use: Reading and understanding paper-based cases is straightforward}
#'   \item{paperadopt2_5}{ordinal. \[ITEM\] Paper adoption - ease of use: I find it convenient to use paper-based cases for studying}
#'   \item{paperadopt3_1}{ordinal. \[ITEM\] Paper adoption - simplicity: I think using paper-based cases is simple}
#'   \item{paperadopt3_2}{ordinal. \[ITEM\] Paper adoption - simplicity: I find working with paper-based cases straightforward}
#'   \item{paperadopt3_3}{ordinal. \[ITEM\] Paper adoption - simplicity: I value the simplicity and accessibility of paper-based cases}
#'   \item{paperadopt4_1}{ordinal. \[ITEM\] Paper adoption - intention: I plan to use paper-based cases in my future studies}
#'   \item{paperadopt4_2}{ordinal. \[ITEM\] Paper adoption - intention: I would choose paper-based cases for my business education}
#'   \item{paperadopt4_3}{ordinal. \[ITEM\] Paper adoption - intention: I intend to advocate for paper-based cases in my academic program}
#'   \item{videoadopt1_1}{ordinal. \[ITEM\] Video adoption - usefulness (1=strongly disagree, 5=strongly agree): Using video-based cases improves my learning performance}
#'   \item{videoadopt1_2}{ordinal. \[ITEM\] Video adoption - usefulness: I find video-based cases to be useful for learning}
#'   \item{videoadopt1_3}{ordinal. \[ITEM\] Video adoption - usefulness: Studying with video-based cases enhances my learning effectiveness}
#'   \item{videoadopt1_4}{ordinal. \[ITEM\] Video adoption - usefulness: Video-based cases help me visualize business scenarios}
#'   \item{videoadopt1_5}{ordinal. \[ITEM\] Video adoption - usefulness: I believe that using video-based cases is beneficial for my education}
#'   \item{videoadopt2_1}{ordinal. \[ITEM\] Video adoption - ease of use: I think learning to use video-based cases is easy}
#'   \item{videoadopt2_2}{ordinal. \[ITEM\] Video adoption - ease of use: I find video-based cases easy to interact with}
#'   \item{videoadopt2_3}{ordinal. \[ITEM\] Video adoption - ease of use: I believe I can efficiently use video-based cases}
#'   \item{videoadopt2_4}{ordinal. \[ITEM\] Video adoption - ease of use: Interacting with video-based cases requires little mental effort}
#'   \item{videoadopt2_5}{ordinal. \[ITEM\] Video adoption - ease of use: I find it convenient to use video-based cases for studying}
#'   \item{videopadopt3_1}{ordinal. \[ITEM\] Video adoption - simplicity: I think using video-based cases is simple}
#'   \item{videopadopt3_2}{ordinal. \[ITEM\] Video adoption - simplicity: I find working with video-based cases straightforward}
#'   \item{videopadopt3_3}{ordinal. \[ITEM\] Video adoption - simplicity: I value the simplicity and accessibility of video-based cases}
#'   \item{videoadopt4_1}{ordinal. \[ITEM\] Video adoption - intention: I plan to use video-based cases in my future studies}
#'   \item{videoadopt4_2}{ordinal. \[ITEM\] Video adoption - intention: I would choose video-based cases for my business education}
#'   \item{videoadopt4_3}{ordinal. \[ITEM\] Video adoption - intention: I intend to advocate for video-based cases in my academic program}
#'   \item{vradopt1_1}{ordinal. \[ITEM\] VR adoption - usefulness (1=strongly disagree, 5=strongly agree): Using VR technology improves my learning performance}
#'   \item{vradopt1_2}{ordinal. \[ITEM\] VR adoption - usefulness: I find VR technology to be useful for learning}
#'   \item{vradopt1_3}{ordinal. \[ITEM\] VR adoption - usefulness: Using VR technology improves my learning effectiveness}
#'   \item{vradopt1_4}{ordinal. \[ITEM\] VR adoption - usefulness: VR technology helps me visualize business scenarios}
#'   \item{vradopt1_5}{ordinal. \[ITEM\] VR adoption - usefulness: I believe that using VR technology is beneficial for my education}
#'   \item{vradopt2_1}{ordinal. \[ITEM\] VR adoption - ease of use: I think learning to operate VR technology is easy}
#'   \item{vradopt2_2}{ordinal. \[ITEM\] VR adoption - ease of use: I find VR technology for educational purposes easy to use}
#'   \item{vradopt2_3}{ordinal. \[ITEM\] VR adoption - ease of use: I believe I could become proficient in using VR technology}
#'   \item{vradopt2_4}{ordinal. \[ITEM\] VR adoption - ease of use: Interacting with educational VR technology is easy for me}
#'   \item{vradopt2_5}{ordinal. \[ITEM\] VR adoption - ease of use: It is easy for me to become skillful at using VR technology}
#'   \item{vradopt3_1}{ordinal. \[ITEM\] VR adoption - simplicity: I think using VR technology for education is simple}
#'   \item{vradopt3_2}{ordinal. \[ITEM\] VR adoption - simplicity: Using VR technology for education is uncomplicated}
#'   \item{vradopt3_3}{ordinal. \[ITEM\] VR adoption - simplicity: I find the experience of using VR technology for learning to be straightforward}
#'   \item{vradopt4_1}{ordinal. \[ITEM\] VR adoption - intention: I plan to use VR technology in my future studies}
#'   \item{vradopt4_2}{ordinal. \[ITEM\] VR adoption - intention: If given a choice, I would choose VR-based cases for business education}
#'   \item{vradopt4_3}{ordinal. \[ITEM\] VR adoption - intention: I intend to recommend the use of VR technology in business education}
#'   \item{adopt}{continuous. Interest in adoption composite score for participant's assigned medium}
#'   \item{adopt1_1}{ordinal. Adoption usefulness item 1 (recoded to participant's condition)}
#'   \item{adopt1_2}{ordinal. Adoption usefulness item 2 (recoded to participant's condition)}
#'   \item{adopt1_3}{ordinal. Adoption usefulness item 3 (recoded to participant's condition)}
#'   \item{adopt1_4}{ordinal. Adoption usefulness item 4 (recoded to participant's condition)}
#'   \item{adopt1_5}{ordinal. Adoption usefulness item 5 (recoded to participant's condition)}
#'   \item{adopt2_1}{ordinal. Adoption ease-of-use item 1 (recoded to participant's condition)}
#'   \item{adopt2_2}{ordinal. Adoption ease-of-use item 2 (recoded to participant's condition)}
#'   \item{adopt2_3}{ordinal. Adoption ease-of-use item 3 (recoded to participant's condition)}
#'   \item{adopt2_4}{ordinal. Adoption ease-of-use item 4 (recoded to participant's condition)}
#'   \item{adopt2_5}{ordinal. Adoption ease-of-use item 5 (recoded to participant's condition)}
#'   \item{adopt3_1}{ordinal. Adoption simplicity item 1 (recoded to participant's condition)}
#'   \item{adopt3_2}{ordinal. Adoption simplicity item 2 (recoded to participant's condition)}
#'   \item{adopt3_3}{ordinal. Adoption simplicity item 3 (recoded to participant's condition)}
#'   \item{adopt4_1}{ordinal. Adoption intention item 1 (recoded to participant's condition)}
#'   \item{adopt4_2}{ordinal. Adoption intention item 2 (recoded to participant's condition)}
#'   \item{adopt4_3}{ordinal. Adoption intention item 3 (recoded to participant's condition)}
#'   \item{whathappening}{text. Open-ended recall: Please describe what is happening in the business case}
#'   \item{product}{text. Open-ended recall: What product do they sell?}
#'   \item{priorrev}{text. Open-ended recall: What was the revenue last quarter?}
#'   \item{priorprofit}{text. Open-ended recall: What was the profitability last quarter?}
#'   \item{currentrev}{text. Open-ended recall: What was the revenue this quarter?}
#'   \item{currentprofit}{text. Open-ended recall: What was the profitability this quarter?}
#'   \item{factory}{text. Open-ended recall: Describe the factory}
#'   \item{cycletimeprior}{text. Open-ended recall: What was the cycle time last quarter?}
#'   \item{cycletimecurrent}{text. Open-ended recall: What was the cycle time this quarter?}
#'   \item{floorfactorycolor}{text. Open-ended visual recall: What color was the factory floor?}
#'   \item{storeceilingcolor}{text. Open-ended visual recall: What color was the store ceiling?}
#'   \item{pricedecrease}{text. Open-ended recall: By how much does the sales team want to decrease the price?}
#'   \item{currentfeaturesmonth}{text. Open-ended recall: How many features does the sales team currently provide to engineering per month?}
#'   \item{officedescription}{text. Open-ended visual recall: Describe the corporate offices where the case discussion ended}
#'   \item{floor}{text. Open-ended recall: On what floor of the building were the offices?}
#'   \item{confroom}{text. Open-ended visual recall: Describe the conference room where the case began}
#'   \item{height}{text. Open-ended visual recall: How tall was the CEO?}
#'   \item{total_recall}{count. Total recollection of facts (composite of all recall items)}
#'   \item{num_recall}{count. Total numbers recalled correctly}
#'   \item{try_visual_recall}{count. Number of visual dimensions participants attempted to describe}
#'   \item{visual_recall}{count. Count of accurate visual details recalled}
#'   \item{len_whathappening}{continuous. Written length of the overall case description response}
#'   \item{len_factory}{continuous. Written length of factory description response}
#'   \item{len_officedescription}{continuous. Written length of office description response}
#'   \item{len_confroom_info}{continuous. Written length of conference room description response}
#'   \item{len_all_descriptions}{continuous. Total written length across all open-ended description responses}
#'   \item{if_product}{binary. Correctly recalled what product the company sells (0=no, 1=yes)}
#'   \item{if_prior_rev}{binary. Correctly recalled prior quarter revenue (0=no, 1=yes)}
#'   \item{if_prior_profit}{binary. Correctly recalled prior quarter profitability (0=no, 1=yes)}
#'   \item{if_current_rev}{binary. Correctly recalled current quarter revenue (0=no, 1=yes)}
#'   \item{if_current_profit}{binary. Correctly recalled current quarter profitability (0=no, 1=yes)}
#'   \item{if_prior_cycle}{binary. Correctly recalled prior cycle time (0=no, 1=yes)}
#'   \item{if_current_cycle}{binary. Correctly recalled current cycle time (0=no, 1=yes)}
#'   \item{if_factory_floor_color}{binary. Correctly recalled factory floor color (0=no, 1=yes)}
#'   \item{if_store_color}{binary. Correctly recalled store ceiling color (0=no, 1=yes)}
#'   \item{if_price_decrease}{binary. Correctly recalled price decrease amount (0=no, 1=yes)}
#'   \item{if_current_features}{binary. Correctly recalled number of features provided per month (0=no, 1=yes)}
#'   \item{if_confroom_info}{binary. Correctly described the conference room (0=no, 1=yes)}
#'   \item{if_try_floor_number}{binary. Attempted to answer the floor number question (0=no, 1=yes)}
#'   \item{if_responded_height}{binary. Attempted to estimate the CEO's height (0=no, 1=yes)}
#'   \item{floor_number}{continuous. Numeric floor number provided by participant}
#'   \item{total_inches}{continuous. Total estimated CEO height in inches}
#'   \item{height_diff}{continuous. Signed difference between estimated and actual CEO height (inches)}
#'   \item{abs_height_diff}{continuous. Absolute difference between estimated and actual CEO height (inches)}
#'   \item{gender}{categorical. Self-described gender (selected choice)}
#'   \item{gender_4_TEXT}{text. Self-described gender (free text, for those who chose 'prefer to self-describe')}
#'   \item{if_female}{binary. Female participant indicator (0=no, 1=yes)}
#'   \item{race_1}{binary. Race: White or Caucasian (0=no, 1=yes)}
#'   \item{race_2}{binary. Race: Black or African American (0=no, 1=yes)}
#'   \item{race_3}{binary. Race: American Indian/Native (0=no, 1=yes)}
#'   \item{race_4}{binary. Race: Asian (0=no, 1=yes)}
#'   \item{race_5}{binary. Race: Native Hawaiian or Other Pacific Islander (0=no, 1=yes)}
#'   \item{race_6}{binary. Race: Other (0=no, 1=yes)}
#'   \item{race_7}{binary. Race: Prefer not to say (0=no, 1=yes)}
#'   \item{if_non_white}{binary. Non-white participant indicator (0=no, 1=yes)}
#'   \item{hispanic}{binary. Spanish, Hispanic, or Latino origin (0=no, 1=yes)}
#'   \item{age}{continuous. Participant age in years}
#'   \item{_merge}{categorical. Matching result from data merge (Stata merge indicator)}
#' }
#' @source Hubbard TD. (2025). Transforming business education: the impact of virtual reality on learning outcomes in case studies. Frontiers in Virtual Reality, 6. https://doi.org/10.3389/frvir.2025.1461690
#' @name vr-business-education
NULL

