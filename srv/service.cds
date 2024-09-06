using {e_procurement_control_parameters.db as db} from '../db/schema';


service control_parameters_srv {
 @odata.draft.enabled
entity e_procurement_control_paramT as select from db.e_procurement_control_paramT;
    
}
annotate control_parameters_srv.e_procurement_control_paramT with @(
    UI: {
        LineItem: [
            {
                $Type: 'UI.DataField',
                Value: role,
                Label: 'Role'
            },
            
            {
                $Type: 'UI.DataField',
                Value: process,
                Label: 'Process'
            },
             {
                $Type: 'UI.DataField',
                Value: subProcess,
                Label: 'Sub Process'
            }
            
        ],
        FieldGroup #Dimensions: {
            $Type: 'UI.FieldGroupType',
            Label: 'Dimensions',
            Data: [
                {
                    $Type: 'UI.DataField',
                    Value: role,
                    Label : 'Role'
                },
                
                {
                    $Type: 'UI.DataField',
                    Value: email
                },
                 {
                    $Type: 'UI.DataField',
                    Value: process
                },
                 {
                    $Type: 'UI.DataField',
                    Value: subProcess
                },
                 {
                    $Type: 'UI.DataField',
                    Value: department
                },
                 {
                    $Type: 'UI.DataField',
                    Value: userid
                }
            ]
        },
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Dimensions',
                Target: '@UI.FieldGroup#Dimensions'
            }
        ]
    }
);

