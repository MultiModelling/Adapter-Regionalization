<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="Opera Input example" description="Solar panel" esdlVersion="v2102" version="3" id="3beab53e-f956-45ac-9fd0-05ba03fb3b84">
  <instance xsi:type="esdl:Instance" id="1cb40fb5-7c19-43b0-b88d-406aaaf2fbd3" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="8dafa428-bfdb-4d45-8dc3-34869dad64b9" name="Untitled Area">
      <asset xsi:type="esdl:MobilityDemand" aggregated="true" decommissioningDate="2022-11-10T16:03:50.000000+0000" description="Car" name="MobilityDemand_5dd2" consType="FINAL" id="5dd2f92d-ed3a-4cd5-ae33-7c8564e2f93a" fuelType="HYDROGEN">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.08963261363972" lon="5.031738281250001"/>
        <port xsi:type="esdl:InPort" connectedTo="da8c4ce9-cefc-4029-9358-b689bbffb949" name="In" id="ec3fa559-a274-4f53-b5e1-92937691a4e4" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" aggregated="true" description="Hydrogen van" consType="FINAL" name="MobilityDemand_1eb5" id="1eb55306-0bbf-42fb-98f6-f84b24fd4b18" fuelType="HYDROGEN">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.09485324899753" lon="5.035600662231446"/>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad 0b591714-2092-449b-bc23-400838f73060" name="In" id="ed6e4b53-b03c-4dd0-a30d-236454cf9f5e" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" aggregated="true" description="Hydrogen truck" consType="FINAL" name="MobilityDemand_d099" id="d0993cdb-4fc7-4679-a26c-c70c325c3007" fuelType="HYDROGEN">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.09403591712909" lon="5.043025016784669"/>
        <port xsi:type="esdl:InPort" id="7ec69199-16cb-44b1-858f-9b3e206275a2" name="In"/>
      </asset>
      <asset xsi:type="esdl:GasConversion" aggregated="true" description="Steam methane reformer" name="GasConversion_9571" id="9571a03f-a7a4-456a-b03c-577f7786c135">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.0895798768328" lon="5.042080879211427"/>
        <port xsi:type="esdl:InPort" connectedTo="629ff679-70c6-4f97-ad48-cfca0071f56c" name="In" id="66d375f2-fbc6-4b32-970f-0e98854e5cae" carrier="063e238f-7357-4c98-953b-afbd1b42c671"/>
        <port xsi:type="esdl:OutPort" connectedTo="04435733-04f6-487d-9328-cca14ad7be20" name="Out" id="71ed5639-42c5-4e5b-95fe-303a18f8d935" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="GasNetwork_3447" id="34470ca7-9895-4118-9232-3fbf2f790c7a">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.090634601128684" lon="5.040493011474609"/>
        <port xsi:type="esdl:InPort" connectedTo="83696312-1b21-4f79-bdb4-95a78f0ac2da 422a30ee-0edc-4d08-87db-2d111987be4a" name="In" id="635530e4-fd2a-421d-919e-b4dbb1492297" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" connectedTo="ed6e4b53-b03c-4dd0-a30d-236454cf9f5e 76ed2b98-c1be-4f0e-8d69-e31ac30d561b b67be9ec-db4a-445d-a9b2-04b70ee61d33 0d66cc91-95b9-4b03-a96a-7ede2899f7d3" name="Out" id="a377b420-d1fc-4ae2-ab0d-888ff069faad" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:Pipe" aggregated="true" name="Pipe_a1f5" id="a1f5a7dc-6900-4597-8fb1-a0ad96e01b65" length="410.8">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.090634601128684" lon="5.040493011474609"/>
          <point xsi:type="esdl:Point" lat="52.09400955133563" lon="5.042939186096192"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="76ed2b98-c1be-4f0e-8d69-e31ac30d561b" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" id="26e80541-3377-44eb-b259-046a768844be" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" aggregated="true" name="Pipe_845b" id="845b4aaf-0f38-47ae-8b76-30ac4c7d23a7" length="576.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.090634601128684" lon="5.040493011474609"/>
          <point xsi:type="esdl:Point" lat="52.09485324899753" lon="5.035600662231446"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="b67be9ec-db4a-445d-a9b2-04b70ee61d33" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" connectedTo="ed6e4b53-b03c-4dd0-a30d-236454cf9f5e" name="Out" id="0b591714-2092-449b-bc23-400838f73060" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:Pipe" aggregated="true" name="Pipe_3f86" id="3f866d7e-d0ab-45c5-add1-7e7192c7e41b" length="608.4">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.090634601128684" lon="5.040493011474609"/>
          <point xsi:type="esdl:Point" lat="52.08963261363972" lon="5.031738281250001"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="0d66cc91-95b9-4b03-a96a-7ede2899f7d3" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" connectedTo="ec3fa559-a274-4f53-b5e1-92937691a4e4" name="Out" id="da8c4ce9-cefc-4029-9358-b689bbffb949" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:Pipe" aggregated="true" name="Pipe_983e" id="983e4463-df8c-4689-9b38-df49ea300c68" length="159.8">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.0895798768328" lon="5.042080879211427"/>
          <point xsi:type="esdl:Point" lat="52.090634601128684" lon="5.040493011474609"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="71ed5639-42c5-4e5b-95fe-303a18f8d935" name="In" id="04435733-04f6-487d-9328-cca14ad7be20" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" connectedTo="635530e4-fd2a-421d-919e-b4dbb1492297" name="Out" id="83696312-1b21-4f79-bdb4-95a78f0ac2da" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:Electrolyzer" aggregated="true" description="Elektrolyzer" name="Electrolyzer_d800" id="d8003a80-35e2-4861-b103-11311957f0a9">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.08896021468253" lon="5.040342807769776"/>
        <port xsi:type="esdl:InPort" connectedTo="ce5189f0-4717-408e-abae-d7df79afcd99 c9c46f23-c790-44f2-970a-05dc434cb66a" name="In" id="82bfadb1-0343-41f5-9fd2-33fb61a7ee80" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
        <port xsi:type="esdl:OutPort" connectedTo="1587fe6b-bcee-430e-bf8c-db41b7c5c40a" name="Out" id="d3f74c29-1837-41e9-975c-d20be9b04935" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <costInformation xsi:type="esdl:CostInformation" id="7799da15-f9a9-40b6-85f5-fd3a23137297">
          <investmentCosts xsi:type="esdl:SingleValue" id="a097eb37-557e-48bc-9a92-accdf3d3de59" value="100000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR" unit="EURO" physicalQuantity="COST" id="1d5d1a7d-5579-4cab-8db1-8162172f3231"/>
          </investmentCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="a7d37ba1-d17f-472f-9aa9-5b327c141a92" value="50.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATT" description="Cost in EUR/MW" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST" id="5d2ad45c-3cdc-4060-a544-ff973694cc4c"/>
          </fixedOperationalCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" attributeReference="power" description="Power constraint for Electrolyzer" name="PowerConstraint" id="7bf5afa7-c57f-4bc0-9d3a-db8633e898fc">
          <range xsi:type="esdl:Range" name="Power Range for electrolyzer" id="90126ff4-edb3-4f8c-9712-ed4f4e048f8d" maxValue="10.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Power in GW" unit="WATT" physicalQuantity="POWER" multiplier="GIGA" id="9bcebdef-4e55-4eb4-bf55-c250f7973ce7"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:Pipe" name="Pipe_135a" id="135a9ae3-ee2d-45d0-90f7-ad66cd7475d2" length="186.5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08896021468253" lon="5.040342807769776"/>
          <point xsi:type="esdl:Point" lat="52.090634601128684" lon="5.040493011474609"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="d3f74c29-1837-41e9-975c-d20be9b04935" name="In" id="1587fe6b-bcee-430e-bf8c-db41b7c5c40a" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
        <port xsi:type="esdl:OutPort" connectedTo="635530e4-fd2a-421d-919e-b4dbb1492297" name="Out" id="422a30ee-0edc-4d08-87db-2d111987be4a" carrier="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635"/>
      </asset>
      <asset xsi:type="esdl:PVPark" surfaceArea="33676" name="PVPark_136e" id="136e90d3-00b7-4ebf-9149-4ace42d0477c">
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.087259395621174" lon="5.036158561706544"/>
            <point xsi:type="esdl:Point" lat="52.087180286180114" lon="5.038948059082032"/>
            <point xsi:type="esdl:Point" lat="52.085650809420066" lon="5.038604736328126"/>
            <point xsi:type="esdl:Point" lat="52.0856244386714" lon="5.035815238952638"/>
          </exterior>
        </geometry>
        <port xsi:type="esdl:OutPort" connectedTo="bca150c4-85b0-4922-9330-cb878f39743d" name="Out" id="f899d1bc-051f-4c78-a5bb-a71d57ae4501" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
      </asset>
      <asset xsi:type="esdl:WindPark" surfaceArea="96112" name="WindPark_0de1" id="0de1b7fd-66eb-48f0-a12e-82adad6a0699">
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.08736487465775" lon="5.040385723114015"/>
            <point xsi:type="esdl:Point" lat="52.08563762404769" lon="5.04075050354004"/>
            <point xsi:type="esdl:Point" lat="52.08584858953834" lon="5.046608448028565"/>
            <point xsi:type="esdl:Point" lat="52.088617419157764" lon="5.045170783996583"/>
          </exterior>
        </geometry>
        <port xsi:type="esdl:OutPort" connectedTo="1ddb39d3-0791-49dd-815e-396937ef5d48" name="Out" id="a48eb142-1d76-4b6c-b240-4ea3b4460ae5" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" aggregated="true" length="347.2" name="ElectricityCable_76dc" id="76dcb8db-045e-42af-99c5-01f1499a1ad5">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08642995830193" lon="5.037366417937562"/>
          <point xsi:type="esdl:Point" lat="52.08896021468253" lon="5.040342807769776"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="f899d1bc-051f-4c78-a5bb-a71d57ae4501" name="In" id="bca150c4-85b0-4922-9330-cb878f39743d" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
        <port xsi:type="esdl:OutPort" connectedTo="82bfadb1-0343-41f5-9fd2-33fb61a7ee80" name="Out" id="ce5189f0-4717-408e-abae-d7df79afcd99" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" aggregated="true" length="314.8" name="ElectricityCable_7e2e" id="7e2e0616-2550-455d-9c8b-2e6097bdd8c8">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08687583255566" lon="5.043459943884512"/>
          <point xsi:type="esdl:Point" lat="52.08896021468253" lon="5.040342807769776"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a48eb142-1d76-4b6c-b240-4ea3b4460ae5" name="In" id="1ddb39d3-0791-49dd-815e-396937ef5d48" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
        <port xsi:type="esdl:OutPort" connectedTo="82bfadb1-0343-41f5-9fd2-33fb61a7ee80" name="Out" id="c9c46f23-c790-44f2-970a-05dc434cb66a" carrier="b717abc7-39de-49b5-8823-fb4be01d92e8"/>
      </asset>
      <asset xsi:type="esdl:Import" aggregated="true" description="Natural gas import" prodType="FOSSIL" name="Import_37d0" id="37d020a9-336b-421b-82a6-9639cc6ae97b">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.09034455443269" lon="5.048518180847168"/>
        <port xsi:type="esdl:OutPort" connectedTo="e2863f89-9b41-43dd-8d5c-ba555011bf87" name="Out" id="2a72afc0-1f0a-4e44-a068-f4c7537ab5b9" carrier="063e238f-7357-4c98-953b-afbd1b42c671"/>
      </asset>
      <asset xsi:type="esdl:Pipe" aggregated="true" name="Pipe_2d0e" id="2d0e288b-fe4d-4b01-8b14-296b65023c32" length="447.9">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.09034455443269" lon="5.048518180847168"/>
          <point xsi:type="esdl:Point" lat="52.0895798768328" lon="5.042080879211427"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="2a72afc0-1f0a-4e44-a068-f4c7537ab5b9" name="In" id="e2863f89-9b41-43dd-8d5c-ba555011bf87" carrier="063e238f-7357-4c98-953b-afbd1b42c671"/>
        <port xsi:type="esdl:OutPort" connectedTo="66d375f2-fbc6-4b32-970f-0e98854e5cae" name="Out" id="629ff679-70c6-4f97-ad48-cfca0071f56c" carrier="063e238f-7357-4c98-953b-afbd1b42c671"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="1b789820-f90f-459f-87b2-59fc4a385d58">
    <carriers xsi:type="esdl:Carriers" id="aa89dfcf-f0f6-4179-9d83-867ff2cee66a">
      <carrier xsi:type="esdl:GasCommodity" name="Hydrogen" id="d3c0dc58-b1d2-431b-9a40-0c6e92ed9635">
        <cost xsi:type="esdl:SingleValue" id="8ddad72b-ce13-4253-9bed-931e6de9c500" value="5.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="JOULE" description="Cost in EUR/J" unit="EURO" physicalQuantity="COST" id="58ad229c-4dd5-4ea9-bc72-1c67f28772d0"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="b717abc7-39de-49b5-8823-fb4be01d92e8">
        <cost xsi:type="esdl:SingleValue" id="69f7e706-d147-450a-af8e-95d3bc7ccd1f" value="50.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="WATTHOUR" description="Cost in EUR/MWh" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST" id="30d481bf-2f98-462f-a171-50d54c3028c7"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="Natural Gas" id="063e238f-7357-4c98-953b-afbd1b42c671">
        <cost xsi:type="esdl:SingleValue" id="396aa714-2852-49e4-b367-1b2d7a767a1b" value="40.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perUnit="JOULE" description="Cost in EUR/J" unit="EURO" physicalQuantity="COST" id="bbf3c069-e51a-4b5d-b8e4-7393052e48d9"/>
        </cost>
      </carrier>
    </carriers>
    <dataSources xsi:type="esdl:DataSources" id="144a4661-4496-4904-b00a-fa2a9ffb66d5">
      <dataSource xsi:type="esdl:DataSource" description="dfsdf_asda" id="91ce2a4f-0b8e-4114-b163-ef35ef9365a0" name="NewDataSource"/>
    </dataSources>
  </energySystemInformation>
</esdl:EnergySystem>
