<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2211" name="Nederland" description="" version="1" id="d1b60859-59cf-4eee-aaff-4a2d2882f153">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="fce928fe-690b-4a70-a39c-f99c62908a7c">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="5c447ae2-8dbc-4731-903d-c43dde65eef0">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in TJ" physicalQuantity="ENERGY" unit="JOULE" multiplier="TERRA" id="cc224fa0-4c45-46c0-9c6c-2dba44aaaacc"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="6f15d8a4-fd10-4a44-b601-9715f9299738" name="Untitled Instance">
    <area xsi:type="esdl:Area" id="31" name="Nederland" scope="COUNTRY">
      <asset xsi:type="esdl:ElectricityDemand" name="ElectricityDemand_73e6" id="73e660df-af15-4d78-9525-17ae667456ae">
        <geometry xsi:type="esdl:Point" lat="52.094115014415955" lon="5.1918983459472665"/>
        <port xsi:type="esdl:InPort" id="c1af55f3-326a-4cdf-8a0c-53ad7c02830a" name="In">
          <profile xsi:type="esdl:SingleValue" value="100.0" id="56fdc012-153f-483f-8782-80ba62d41e5d">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cc224fa0-4c45-46c0-9c6c-2dba44aaaacc"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:WindTurbine" power="10000000000.0" name="WindTurbine_5d40" id="5d40a202-ef7d-48ea-89bd-ce26963c61ee">
        <geometry xsi:type="esdl:Point" lat="52.096171494651784" lon="5.187950134277345"/>
        <port xsi:type="esdl:OutPort" id="c0fe602a-16c0-467a-b60a-10cdc64fbbd9" name="Out"/>
      </asset>
      <asset xsi:type="esdl:GasHeater" power="100000000000.0" efficiency="0.9" name="GasHeater_2e33" id="2e3395b2-e332-46a9-b036-1e6c5c4b8aa5">
        <geometry xsi:type="esdl:Point" lat="52.094115014415955" lon="5.188121795654298"/>
        <port xsi:type="esdl:InPort" id="1e99408e-42c1-4f7e-b936-8dff58e30ad8" name="In"/>
        <port xsi:type="esdl:OutPort" id="814c4e1c-89d1-4df1-a38e-dc05337f8082" name="Out"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_c34d" id="c34d9aaa-9898-4835-be1b-13032e8b0ea0">
        <geometry xsi:type="esdl:Point" lat="52.09606603643296" lon="5.19207000732422"/>
        <port xsi:type="esdl:InPort" id="1f60403c-44c6-47ab-8f94-001a2a77f074" name="In">
          <profile xsi:type="esdl:SingleValue" value="360.0" id="af8e5d23-ae97-47de-98e9-542a0bba77ab">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cc224fa0-4c45-46c0-9c6c-2dba44aaaacc"/>
          </profile>
        </port>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
