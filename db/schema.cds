namespace e_procurement_control_parameters.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity e_procurement_control_paramT : cuid, managed {
    process : String;
    subProcess : String;
    role       : String;
    email      : String;
    userid     : String;
    department : String;
}

annotate e_procurement_control_paramT @odata.draft.enabled;


