
Function PowerBIReportBuilderReport
{  

	[CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $false)]        
		[string]
        $port,
        [Parameter(Mandatory = $false)]        
		[string]
        $database,
        [Parameter(Mandatory = $false)]        
		[string]
        $path	
    )
    
        $tdsXml = "<?xml version=""1.0""?>
<Report MustUnderstand=""df"" xmlns=""http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition"" xmlns:rd=""http://schemas.microsoft.com/SQLServer/reporting/reportdesigner"" xmlns:df=""http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition/defaultfontfamily"">
  <rd:ReportUnitType>Mm</rd:ReportUnitType>
  <rd:ReportID>cd1b0079-99d9-4e99-9f5e-6fda21f9f09d</rd:ReportID>
  <df:DefaultFontFamily>Segoe UI</df:DefaultFontFamily>
  <AutoRefresh>0</AutoRefresh>
  <DataSources>
    <DataSource Name=""PowerBI"">
      <rd:SecurityType>Integrated</rd:SecurityType>
      <ConnectionProperties>
        <DataProvider>OLEDB-MD</DataProvider>
        <ConnectString>Data Source=$port;Initial Catalog=$database</ConnectString>
        <IntegratedSecurity>true</IntegratedSecurity>
      </ConnectionProperties>
      <rd:DataSourceID>8c230b7c-799c-4007-af55-6bc26eca797c</rd:DataSourceID>
    </DataSource>
  </DataSources>
  <ReportSections>
    <ReportSection>
      <Body>
        <ReportItems>
          <Textbox Name=""ReportTitle"">
            <rd:WatermarkTextbox>Title</rd:WatermarkTextbox>
            <rd:DefaultName>Title</rd:DefaultName>
            <CanGrow>true</CanGrow>
            <KeepTogether>true</KeepTogether>
            <Paragraphs>
              <Paragraph>
                <TextRuns>
                  <TextRun>
                    <Value>$port - From PowerBI Desktop with Love</Value>
                    <Style>
                      <FontFamily>Segoe UI Light</FontFamily>
                      <FontSize>16pt</FontSize>
                    </Style>
                  </TextRun>
                </TextRuns>
                <Style />
              </Paragraph>
            </Paragraphs>
            <Top>0mm</Top>
            <Height>12.7mm</Height>
            <Width>139.7mm</Width>
            <Style>
              <Border>
                <Style>None</Style>
              </Border>
              <PaddingLeft>2pt</PaddingLeft>
              <PaddingRight>2pt</PaddingRight>
              <PaddingTop>2pt</PaddingTop>
              <PaddingBottom>2pt</PaddingBottom>
            </Style>
          </Textbox>
          <Textbox Name=""Textbox1"">
            <rd:DefaultName>Textbox1</rd:DefaultName>
            <CanGrow>true</CanGrow>
            <KeepTogether>true</KeepTogether>
            <Paragraphs>
              <Paragraph>
                <TextRuns>
                  <TextRun>
                    <Value>remember to save the file with another name</Value>
                    <Style>
                      <FontSize>8pt</FontSize>
                    </Style>
                  </TextRun>
                </TextRuns>
                <Style />
              </Paragraph>
              <Paragraph>
                <TextRuns>
                  <TextRun>
                    <Value />
                    <Style>
                      <FontSize>8pt</FontSize>
                    </Style>
                  </TextRun>
                </TextRuns>
                <Style />
              </Paragraph>
              <Paragraph>
                <TextRuns>
                  <TextRun>
                    <Value>and update the port and db name if you close and reopen the pbix file</Value>
                    <Style>
                      <FontSize>8pt</FontSize>
                    </Style>
                  </TextRun>
                </TextRuns>
                <Style />
              </Paragraph>
            </Paragraphs>
            <Top>19.812mm</Top>
            <Left>15.44637mm</Left>
            <Height>22.27188mm</Height>
            <Width>124.25363mm</Width>
            <ZIndex>1</ZIndex>
            <Style>
              <Border>
                <Style>None</Style>
              </Border>
              <PaddingLeft>2pt</PaddingLeft>
              <PaddingRight>2pt</PaddingRight>
              <PaddingTop>2pt</PaddingTop>
              <PaddingBottom>2pt</PaddingBottom>
            </Style>
          </Textbox>
        </ReportItems>
        <Height>57.15mm</Height>
        <Style>
          <Border>
            <Style>None</Style>
          </Border>
        </Style>
      </Body>
      <Width>152.4mm</Width>
      <Page>
        <PageFooter>
          <Height>11.43mm</Height>
          <PrintOnFirstPage>true</PrintOnFirstPage>
          <PrintOnLastPage>true</PrintOnLastPage>
          <ReportItems>
            <Textbox Name=""ExecutionTime"">
              <rd:DefaultName>ExecutionTime</rd:DefaultName>
              <CanGrow>true</CanGrow>
              <KeepTogether>true</KeepTogether>
              <Paragraphs>
                <Paragraph>
                  <TextRuns>
                    <TextRun>
                      <Value>=Globals!ExecutionTime</Value>
                      <Style />
                    </TextRun>
                  </TextRuns>
                  <Style>
                    <TextAlign>Right</TextAlign>
                  </Style>
                </Paragraph>
              </Paragraphs>
              <Top>5.08mm</Top>
              <Left>101.6mm</Left>
              <Height>6.35mm</Height>
              <Width>50.8mm</Width>
              <Style>
                <Border>
                  <Style>None</Style>
                </Border>
                <PaddingLeft>2pt</PaddingLeft>
                <PaddingRight>2pt</PaddingRight>
                <PaddingTop>2pt</PaddingTop>
                <PaddingBottom>2pt</PaddingBottom>
              </Style>
            </Textbox>
          </ReportItems>
          <Style>
            <Border>
              <Style>None</Style>
            </Border>
          </Style>
        </PageFooter>
        <PageHeight>29.7cm</PageHeight>
        <PageWidth>21cm</PageWidth>
        <LeftMargin>2cm</LeftMargin>
        <RightMargin>2cm</RightMargin>
        <TopMargin>2cm</TopMargin>
        <BottomMargin>2cm</BottomMargin>
        <ColumnSpacing>0.13cm</ColumnSpacing>
        <Style />
      </Page>
    </ReportSection>
  </ReportSections>
  <ReportParametersLayout>
    <GridLayoutDefinition>
      <NumberOfColumns>4</NumberOfColumns>
      <NumberOfRows>2</NumberOfRows>
    </GridLayoutDefinition>
  </ReportParametersLayout>
</Report>"   
                
        #the location of the tds file to be opened
        $tdsFile = "$path\desktoptobuilder.rdl"

        $tdsXml | Out-File $tdsFile -Force	

        Invoke-Item $tdsFile

}

PowerBIReportBuilderReport -port $args[0] -database $args[1] -path "C:\temp"
