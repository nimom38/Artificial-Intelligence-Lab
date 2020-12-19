/*
*/
domains
	disease,patient,indication = string
predicates
	hypovitaminosis(patient,disease)
	symptom(patient,indication)
	response(string)
	start
clauses
	start :-
		write("What is the patient's name?  "),
		readln(Patient),
		hypovitaminosis(Patient,Disease),
		write(Patient," Probably lack of ", Disease,"."),nl.
        start :-
                write("Sorry, I can not diagnose your diesase."),nl.
	symptom(Patient, tiredness):-
		write("Does ", Patient, " feel tiredness(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
	symptom(Patient, hair_loss):-
		write("Does ", Patient, " getting hair loss(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, joint_pain):-
		write("Does ", Patient, " have Joint Pain(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
	
	symptom(Patient, weakened_muscle):-
		write("Does ", Patient, " have weakened muscle(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, swelling):-
		write("Does ", Patient, " have swelling problem(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, weight_loss):-
		write("Does ", Patient, " getting weight loss(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, memory_loss):-
		write("Does ", Patient, " getting memory loss(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, stress):-
		write("Does ", Patient, " have stress(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, frustrations):-
		write("Does ", Patient, " getting frustrated(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, depression):-
		write("Does ", Patient, " having depression(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, dry_skin):-
		write("Does ", Patient, " getting dry skin(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, bone_loss):-
		write("Does ", Patient, " reducing bone(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, fatigue):-
		write("Does ", Patient, " getting Fatigue(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient, bone_and_back_pain):-
		write("Does ", Patient, " have Bone and Back Pain(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  digestive_problems):-
		write("Does ", Patient, " have  digestive problems(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  gastrointestinal_diseases):-
		write("Does ", Patient, " have gastrointestinal diseases(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  leg_cramps):-
		write("Does ", Patient, " have leg_cramps(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  easy_bruising):-
		write("Does ", Patient, " have Easy bruising problem(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  bleeding_from_the_gastrointestinal_tract):-
		write("Does ", Patient, " bleeding from the gastrointestinal tract.(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  blood_in_the_urine):-
		write("Does ", Patient, " getting blood in the urine(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
    symptom(Patient,  uncontrollable_bleeding_at_surgical_or_puncture_sites):-
		write("Does ", Patient, " Uncontrollable bleeding at surgical or puncture sites(yes/no)  ?"),
		response(Reply),
		Reply = "yes".
	
	hypovitaminosis(Patient, vitamin_A):-
		symptom(Patient, tiredness),
		symptom(Patient, hair_loss),
        symptom(Patient, joint_pain),
        symptom(Patient, swelling),
        symptom(Patient, weakened_muscle),
        symptom(Patient, weight_loss),
        symptom(Patient, memory_loss),
        symptom(Patient, fatigue).
    hypovitaminosis(Patient, vitamin_B):-
        symptom(Patient, stress),
        symptom(Patient, frustrations),
        symptom(Patient, depression),
        symptom(Patient, memory_loss).
    hypovitaminosis(Patient, vitamin_C):-
        symptom(Patient, joint_pain),
        symptom(Patient, hair_loss),
        symptom(Patient, dry_skin).
    hypovitaminosis(Patient, vitamin_D):-
        symptom(Patient, fatigue),
        symptom(Patient, tiredness),
        symptom(Patient, bone_and_back_pain),
        symptom(Patient, depression),
        symptom(Patient, bone_loss),
        symptom(Patient, hair_loss),
        symptom(Patient, weakened_muscle).
    hypovitaminosis(Patient, vitamin_E):-
        symptom(Patient,  digestive_problems),
        symptom(Patient,  gastrointestinal_diseases),
        symptom(Patient, hair_loss),
        symptom(Patient, weakened_muscle),
        symptom(Patient,  leg_cramps).
    hypovitaminosis(Patient, vitamin_k):-        
        symptom(Patient,  easy_bruising),
        symptom(Patient,  bleeding_from_the_gastrointestinal_tract),
        symptom(Patient,  blood_in_the_urine),
        symptom(Patient,  uncontrollable_bleeding_at_surgical_or_puncture_sites).
     
	response(Reply):-
		readln(Reply),
		write(Reply), nl.
