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

