<?xml version="1.0" encoding="UTF-8"?>
<!-- ======================================
     Constraint Domain: Require schematronVersion, reverseDNS, and scapName attributes 
     for scapDataStreamCollection element. Require scapVersion, useCase, 
     and scapName attributes for scapDataStream element. Constrain scapComponent attributes such
     that navtitle defaults to 'Component' and format defaults to 'xml'.
     
     Joshua Lubell
     
     ====================================== -->
     
<!ENTITY scapDataStreamCollection-constraints "(scapDataStreamCollection scapDataStreamCollection-c)" >

<!ENTITY % filter-atts
              "props
                          CDATA
                                    #IMPLIED
               platform
                          CDATA
                                    #IMPLIED
               product
                          CDATA
                                    #IMPLIED
               audience
                          CDATA
                                    #IMPLIED
               otherprops
                          CDATA
                                    #IMPLIED
               %props-attribute-extensions;"
>

<!ENTITY % conref-atts
              "conref
                          CDATA
                                    #IMPLIED
               conrefend
                          CDATA
                                    #IMPLIED
               conaction
                          (mark |
                           pushafter |
                           pushbefore |
                           pushreplace |
                           -dita-use-conref-target)
                                    #IMPLIED
               conkeyref
                          CDATA
                                    #IMPLIED"
>

<!ENTITY % localization-atts
              "translate
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               xml:lang
                          CDATA
                                    #IMPLIED
               dir
                          (lro |
                           ltr |
                           rlo |
                           rtl |
                           -dita-use-conref-target)
                                    #IMPLIED"
>

<!ENTITY % select-atts
              "%filter-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               importance
                          (default |
                           deprecated |
                           high |
                           low |
                           normal |
                           obsolete |
                           optional |
                           recommended |
                           required |
                           urgent |
                           -dita-use-conref-target)
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED
               status
                          (changed |
                           deleted |
                           new |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED"
>

<!ENTITY % topicref-atts
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED"
>

<!ENTITY % id-atts
              "id
                          NMTOKEN
                                    #IMPLIED
               %conref-atts;"
>

<!ENTITY % univ-atts
              "%id-atts;
               %select-atts;
               %localization-atts;"
>

<!ENTITY % scapDataStreamCollection.attributes
              "title
                          CDATA
                                    #IMPLIED
               scapName
                          NMTOKEN
                                    #REQUIRED
               schematronVersion CDATA #REQUIRED
               reverseDNS NMTOKEN #REQUIRED
               %conref-atts;
               anchorref
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %localization-atts;
               %topicref-atts;
               %select-atts;
               "
>
<!ENTITY % scapDataStream.attributes
              "scapName
                          NMTOKEN
                                    #REQUIRED
               scapVersion ( 1.3 | 1.2 | 1.1 | 1.0 )  #REQUIRED
               useCase ( CONFIGURATION | VULNERABILITY | INVENTORY | OTHER ) #REQUIRED
               navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %topicref-atts;
               %univ-atts;"
>

<!ENTITY % scapComponent.attributes
              "navtitle
                          CDATA
                                    'Component'
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #REQUIRED
               keyscope
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    'xml'
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>

<!-- ============ End of constraint module -->