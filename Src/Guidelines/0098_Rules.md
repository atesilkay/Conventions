# Rules

These are the recommended rules mentioned within documentation.
Following are the main projects which can be used for analysis.

## StyleCop

Project URL : [DotNetAnalyzers/StyleCopAnalyzers](https://github.com/DotNetAnalyzers/StyleCopAnalyzers)

### Spacing Rules

| Identifier | Enabled                      | Name                                                                    |
|------------|---------------------------   |-------------------------------------------------------------------------|
| SA1000     | [YES](#SA1000_)              | KeywordsMustBeSpacedCorrectly                                           |
| SA1001     | [YES](#SA1001_)              | CommasMustBeSpacedCorrectly                                             |
| SA1002     | [YES](#SA1002_)              | SemicolonsMustBeSpacedCorrectly                                         |
| SA1003     | [YES](#SA1003_)              | SymbolsMustBeSpacedCorrectly                                            |
| SA1004     |                              | DocumentationLinesMustBeginWithSingleSpace                              |
| SA1005     |                              | SingleLineCommentsMustBeginWithSingleSpace                              |
| SA1006     |                              | PreprocessorKeywordsMustNotBePrecededBySpace                            |
| SA1007     |                              | OperatorKeywordMustBeFollowedBySpace                                    |
| SA1008     | [YES](#SA1008_9_)            | OpeningParenthesisMustBeSpacedCorrectly                                 |
| SA1009     | [YES](#SA1008_9_)            | ClosingParenthesisMustBeSpacedCorrectly                                 |
| SA1010     | [YES](#SA1010_11_)          | OpeningSquareBracketsMustBeSpacedCorrectly                              |
| SA1011     | [YES](#SA1010_11_)          | ClosingSquareBracketsMustBeSpacedCorrectly                              |
| SA1012     | [YES](#SA1012_13_)          | OpeningBracesMustBeSpacedCorrectly                                      |
| SA1013     | [YES](#SA1012_13_)          | ClosingBracesMustBeSpacedCorrectly                                      |
| SA1014     | [YES](#SA1014_15_)          | OpeningGenericBracketsMustBeSpacedCorrectly                             |
| SA1015     | [YES](#SA1014_15_)          | ClosingGenericBracketsMustBeSpacedCorrectly                             |
| SA1016     | [YES](#SA1016_17_)          | OpeningAttributeBracketsMustBeSpacedCorrectly                           |
| SA1017     | [YES](#SA1016_17_)          | ClosingAttributeBracketsMustBeSpacedCorrectly                           |
| SA1018     | [YES](#SA1018_)             | NullableTypeSymbolsMustNotBePrecededBySpace                             |
| SA1019     | [YES](#SA1019_)             | MemberAccessSymbolsMustBeSpacedCorrectly                                |
| SA1020     | [YES](#SA1020_)             | IncrementDecrementSymbolsMustBeSpacedCorrectly                          |
| SA1021     | [YES](#SA1021_22_)          | NegativeSignsMustBeSpacedCorrectly                                      |
| SA1022     | [YES](#SA1021_22_)          | PositiveSignsMustBeSpacedCorrectly                                      |
| SA1023     |                              | DereferenceAndAccessOfMustBeSpacedCorrectly                             |
| SA1024     | [YES](#SA1024_)             | ColonsMustBeSpacedCorrectly                                             |
| SA1025     | [YES](#SA1025_28_)          | CodeMustNotContainMultipleWhitespaceInARow                              |
| SA1026     |                              | CodeMustNotContainSpaceAfterNew KeywordInImplicitlyTypedArrayAllocation |
| SA1027     | [YES](#SA1027_)             | UseTabsCorrectly                                                        |
| SA1028     | [YES](#SA1025_28_)          | CodeMustNotContainTrailingWhitespace                                    |
<div style="page-break-after: always;"></div>

### Ordering Rules

| Identifier | Enabled                  | Name                                                                |
|------------|---------                 |---------------------------------------------------------------------|
| SA1200     |                          | UsingDirectivesMustBePlacedCorrectly                                |
| SA1201     | [YES](#member-ordering)       | ElementsMustAppearInTheCorrectOrder                                 |
| SA1202     | [YES](#member-ordering)       | ElementsMustBeOrderedByAccess                                       |
| SA1203     | [YES](#member-ordering)       | ConstantsMustAppearBeforeFields                                     |
| SA1204     | [YES](#member-ordering)       | StaticElementsMustAppearBeforeInstanceElements                      |
| SA1205     | [YES](#member-ordering)       | PartialElementsMustDeclareAccess                                    |
| SA1206     | [YES](#member-ordering)       | DeclarationKeywordsMustFollowOrder                                  |
| SA1207     | [YES](#member-ordering)       | ProtectedMustComeBeforeInternal                                     |
| SA1208     | [YES](#member-ordering)       | SystemUsingDirectivesMustBePlacedBeforeOtherUsingDirectives         |
| SA1209     | [YES](#member-ordering)       | UsingAliasDirectivesMustBePlacedAfterOtherUsingDirectives           |
| SA1210     | [YES](#member-ordering)       | UsingDirectivesMustBeOrderedAlphabeticallyByNamespace               |
| SA1211     | [YES](#member-ordering)       | UsingAliasDirectivesMustBeOrderedAlphabeticallyByAliasName          |
| SA1212     | [YES](#member-ordering)       | PropertyAccessorsMustFollowOrder                                    |
| SA1213     | [YES](#member-ordering)       | EventAccessorsMustFollowOrder                                       |
| SA1214     | [YES](#member-ordering)       | ReadonlyElementsMustAppearBeforeNonReadonlyElements                 |
| SA1215     | [YES](#member-ordering)       | InstanceReadonlyElementsMustAppearBeforeInstanceNonReadonlyElements |
| SA1216     | [YES](#member-ordering)       | UsingStaticDirectivesMustBePlacedAtTheCorrectLocation               |
| SA1217     | [YES](#member-ordering)       | UsingStaticDirectivesMustBeOrderedAlphabetically                    |

[SA1200 will be applied opposite of the definition. Which means using blocks must be placed outside of namespace definition.]

<div style="page-break-after: always;"></div>

### Layout Rules

| Identifier | Enabled                  | Name                                                    |
|------------|---------                 |---------------------------------------------------------|
| SA1500     | [YES](#SA1500_)          | BracesForMultiLineStatementsMustNotShareLine            |
| SA1501     | [YES](#SA1501_)          | StatementMustNotBeOnSingleLine                          |
| SA1502     | [YES](#SA1502_)          | ElementMustNotBeOnSingleLine                            |
| SA1503     | [YES](#SA1503_)          | BracesMustNotBeOmitted                                  |
| SA1504     | [YES](#SA1504_)          | AllAccessorsMustBeSingleLineOrMultiLine                 |
| SA1505     | [YES](#SA1505_)          | OpeningBracesMustNotBeFollowedByBlankLine               |
| SA1506     |                          | ElementDocumentationHeadersMustNotBeFollowedByBlankLine |
| SA1507     | [YES](#SA1507_)          | CodeMustNotContainMultipleBlankLinesInARow              |
| SA1508     | [YES](#SA1508_09_)       | ClosingBracesMustNotBePrecededByBlankLine               |
| SA1509     | [YES](#SA1508_09_)       | OpeningBracesMustNotBePrecededByBlankLine               |
| SA1510     | [YES](#SA1510_)          | ChainedStatementBlocksMustNotBePrecededByBlankLine      |
| SA1511     | [YES](#SA1511_)          | WhileDoFooterMustNotBePrecededByBlankLine               |
| SA1512     |                          | SingleLineCommentsMustNotBeFollowedByBlankLine          |
| SA1513     | [YES](#SA1513_)          | ClosingBraceMustBeFollowedByBlankLine                   |
| SA1514     |                          | ElementDocumentationHeaderMustBePrecededByBlankLine     |
| SA1515     |                          | SingleLineCommentMustBePrecededByBlankLine              |
| SA1516     | [YES](#SA1516_)          | ElementsMustBeSeparatedByBlankLine                      |
| SA1517     | [YES](#SA1517_18_)       | CodeMustNotContainBlankLinesAtStartOfFile               |
| SA1518     | [YES](#SA1517_18_)       | UseLineEndingsCorrectlyAtEndOfFile                      |
| SA1519     |                          | BracesMustNotBeOmittedFromMultiLineChildStatement       |
| SA1520     |                          | UseBracesConsistently                                   |


<div style="page-break-after: always;"></div>

### Naming Rules

| Identifier | Enabled              | Name                                                 |
|------------|---------             |------------------------------------------------------|
| SA1300     | [YES](#SA1300_)      | ElementMustBeginWithUpperCaseLetter                  |
| SA1301     |                      | ElementMustBeginWithLowerCaseLetter                  |
| SA1302     | [YES](#SA1302_)      | InterfaceNamesMustBeginWithI                         |
| SA1303     |                      | ConstFieldNamesMustBeginWithUpperCaseLetter          |
| SA1304     |                      | NonPrivateReadonlyFieldsMustBeginWithUpperCaseLetter |
| SA1305     |                      | FieldNamesMustNotUseHungarianNotation                |
| SA1306     |                      | FieldNamesMustBeginWithLowerCaseLetter               |
| SA1307     |                      | AccessibleFieldsMustBeginWithUpperCaseLetter         |
| SA1308     | [YES](#SA1308_)      | VariableNamesMustNotBePrefixed                       |
| SA1309     |                      | FieldNamesMustNotBeginWithUnderscore                 |
| SA1310     |                      | FieldNamesMustNotContainUnderscore                   |
| SA1311     |                      | StaticReadonlyFieldsMustBeginWithUpperCaseLetter     |
| SA1312     | [YES](#SA1312_)      | VariableNamesMustBeginWithLowerCaseLetter            |
| SA1313     | [YES](#SA1313_)      | ParameterNamesMustBeginWithLowerCaseLetter           |
| SA1314     | [YES](#SA1314_)      | TypeParameterNamesMustBeginWithT                     |

<div style="page-break-after: always;"></div>

### Maintainability Rules

| Identifier | Enabled          | Name                                                 |
|------------|---------         |------------------------------------------------------|
| SA1119     |[YES](#SA1119_)   | StatementMustNotUseUnnecessaryParenthesis            |
| SA1400     |                  | AccessModifierMustBeDeclared                         |
| SA1401     |                  | FieldsMustBePrivate                                  |
| SA1402     |[YES](#SA1402_)   | FileMayOnlyContainASingleType                        |
| SA1403     |[YES](#SA1403_)   | FileMayOnlyContainASingleNamespace                   |
| SA1404     |                  | CodeAnalysisSuppressionMustHaveJustification         |
| SA1405     |                  | DebugAssertMustProvideMessageText                    |
| SA1406     |                  | DebugFailMustProvideMessageText                      |
| SA1407     |                  | ArithmeticExpressionsMustDeclarePrecedence           |
| SA1408     |                  | ConditionalExpressionsMustDeclarePrecedence          |
| SA1409     |                  | RemoveUnnecessaryCode                                |
| SA1410     |                  | RemoveDelegateParenthesisWhenPossible                |
| SA1411     |                  | AttributeConstructorMustNotUseUnnecessaryParenthesis |
| SA1412     |                  | StoreFilesAsUtf8                                     |
| SA1413     |                  | UseTrailingCommasInMultiLineInitializers             |

<div style="page-break-after: always;"></div>

### Readability Rules

| Identifier | Enabled | Name                                                    |
|------------|---------|---------------------------------------------------------|
| SA1100     |         | DoNotPrefixCallsWithBaseUnlessLocalImplementationExists |
| SA1101     |  x       | PrefixLocalCallsWithThis                                |
| SA1102     |         | QueryClauses                                            |
| SA1103     |         | QueryClauses                                            |
| SA1104     |         | QueryClauses                                            |
| SA1105     |         | QueryClauses                                            |
| SA1106     |         | CodeMustNotContainEmptyStatements                       |
| SA1107     |         | CodeMustNotContainMultipleStatementsOnOneLine           |
| SA1108     |[YES](#SA1108_)   | BlockStatementsMustNotContainEmbeddedComments           |
| SA1109     |[YES](#SA1109_)   | BlockStatementsMustNotContainEmbeddedRegions            |
| SA1110     |[YES](#SA1110_)                  | OpeningParenthesisMustBeOnDeclarationLine               |
| SA1111     |[YES](#SA1111_)                  | ClosingParenthesisMustBeOnLineOfLastParameter           |
| SA1112     |[YES](#SA112_)                  | ClosingParenthesisMustBeOnLineOfOpeningParenthesis      |
| SA1113     |[YES](#SA1113_)   | CommaMustBeOnSameLineAsPreviousParameter                |
| SA1114     |[YES](#SA1114_)         | ParameterListMustFollowDeclaration                      |
| SA1115     |[YES](#SA1115_17_)         | ParameterMustFollowComma                                |
| SA1116     |[YES](#SA1115_17_)         | SplitParametersMustStartOnLineAfterDeclaration          |
| SA1117     |[YES](#SA1115_17_)         | ParametersMustBeOnSameLineOrSeparateLines               |
| SA1118     |         | ParameterMustNotSpanMultipleLines                       |
| SA1120     |         | CommentsMustContainText                                 |
| SA1121     |         | UseBuiltInTypeAlias                                     |
| SA1122     |         | UseStringEmptyForEmptyStrings                           |
| SA1123     |         | DoNotPlaceRegionsWithinElements                         |
| SA1124     |         | DoNotUseRegions                                         |
| SA1125     |         | UseShorthandForNullableTypes                            |
| SA1126     |         | PrefixCallsCorrectly                                    |
| SA1127     |[YES](#SA1127_)          | GenericTypeConstraintsMustBeOnOwnLine                   |
| SA1128     |[YES](#SA1127_)         | ConstructorInitializerMustBeOnOwnLine                   |
| SA1129     |         | DoNotUseDefaultValueTypeConstructor                     |
| SA1130     |         | UseLambdaSyntax                                         |
| SA1131     |         | UseReadableConditions                                   |
| SA1132     |[YES](#SA1132_)         | DoNotCombineFields                                      |
| SA1133     |[YES](#SA1133_)         | DoNotCombineAttributes                                  |
| SA1134     |         | AttributesMustNotShareLine                              |
| SA1136     |         | EnumValuesShouldBeOnSeparateLines                       |
| SA1139     |         | UseLiteralsSuffixNotationInsteadOfCasting               |