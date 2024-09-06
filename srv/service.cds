using {e_procurement_control_parameters.db as db} from '../db/schema';


service control_parameters_srv {
 @odata.draft.enabled
entity e_procurement_control_paramT as select from db.e_procurement_control_paramT;
    
}

