<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">6.5</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">Store</property>
      </property>
      <property name="chainID" class="String">22</property>
    </element>
  </property>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects"/>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration"/>
  <property name="httpClientType" class="kapow.util.net.httpclient.HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="kapow.robot.robomaker.robot.TransitionGraph">
    <transitions class="java.util.LinkedList">
      <object class="kapow.robot.robomaker.robot.Transition" id="0">
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.LoopDatabaseQuery">
          <property name="databaseName" class="kapow.util.db.DBName">
            <property name="name" class="String">test</property>
          </property>
          <property name="sQL" class="String">"SELECT postnr FROM postnr"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">postnr</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Store.postCodeIdentifier</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" class="Integer" id="1">0</property>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer" id="2">2</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="3">
        <property name="name" class="String" id="4">Load Page</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.PageLoader5StateProcessor">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.TextExpressionURLProvider">
            <property name="expression" class="String">"http://www.superbest.dk/Ajax/GetStoreList.aspx?lat=" + Store.latitude + "&amp;lng=" + Store.longitude</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="5"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">6</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="6">
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.PageLoader5StateProcessor">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.TextExpressionURLProvider">
            <property name="expression" class="String">"http://www.eniro.dk/query?search_word=&amp;geo_area=" + urlEncode(Store.postCodeIdentifier) + "&amp;what=all"</property>
          </property>
          <property name="useDefault" class="Boolean">false</property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1">
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String">Mozilla</property>
                <property name="appMinorVersion" class="String"/>
                <property name="appName" class="String">Microsoft Internet Explorer</property>
                <property name="appVersion" class="String">4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
                <property name="displayName" class="String">Internet Explorer 7.0 on Windows Vista</property>
                <property name="name" class="String">IE_70_WinVista</property>
                <property name="platform" class="String">Win32</property>
                <property name="userAgentHeaderValue" class="String">Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
              </property>
            </property>
            <property name="numOfAttempts" class="Integer">3</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode" id="7">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">7</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="8">
        <property name="name" class="String">Test Tag</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.Filter2">
          <property name="pattern" class="String">.*? id="map-results" .*?</property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="7"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">8</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="9">
        <property name="name" class="String">Extract longitude</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;div id="imageholder"&gt;.*?id="coord".*?value="(\d+\.\d+);.*</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String" id="10">Store.longitude</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="7"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">9</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="11">
        <property name="name" class="String">Extract latitude</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;div id="imageholder"&gt;.*?id="coord".*?value="\d+\.\d+;(\d+\.\d+),.*</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.latitude</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">*</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="12">
        <property name="name" class="String">For Each Tag</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.TagIterator4StateProcessor">
          <property name="tag" class="String">li</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.body</property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode" id="13">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">11</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="14">
        <property name="name" class="String">Extract website</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*? value="(.*?)"&gt;</property>
              <property name="replaceExp" class="String">"http://www.superbest.dk" + $1</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.website</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">li.input</property>
            <property name="attributeName" class="String">name</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">url</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">12</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="15">
        <property name="name" class="String">Extract latitude</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*? value="(.*?)"&gt;</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.latitude</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">li.input</property>
            <property name="attributeName" class="String">name</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">lat</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">14</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="16">
        <property name="name" class="String">Extract longitude</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*? value="(.*?)"&gt;</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="10"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="String">li.input</property>
            <property name="attributeName" class="String">name</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">lng</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">15</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="17">
        <property name="name" idref="4"/>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.PageLoader5StateProcessor">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.AttributeValueURLProvider">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">Store.website</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
        </property>
        <property name="nodeFinderList" idref="5"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">16</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="18">
        <property name="name" class="String">Extract name</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h3&gt;(.*?)&lt;/h3&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"SuperBest " + INPUT</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.name</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String" id="19">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">17</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="20">
        <property name="name" class="String">Extract email</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?"mailto:(.*?)".*</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.email</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.a</property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">ctl00_ctlMainContent_lnkContact</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">18</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="21">
        <property name="name" class="String">Extract streetName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h3&gt;.*?&lt;/h3&gt;.*?&lt;p&gt;(.*?)( \d+.*?)?&lt;/p&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">19</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="22">
        <property name="name" class="String">Extract streetBuildingIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h3&gt;.*?&lt;/h3&gt;.*?&lt;p&gt;(.*?)( \d+.*?)?&lt;/p&gt;.*</property>
              <property name="replaceExp" class="String">$2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.streetBuildingIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">20</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="23">
        <property name="name" class="String">Extract postCodeIdentifier</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h3&gt;.*?&lt;/h3&gt;.*?&lt;p&gt;.*?( \d+.*?)?&lt;/p&gt;\s+&lt;p&gt;\s+(\d{4}) (.*?)&lt;/p&gt;.*</property>
              <property name="replaceExp" class="String">$2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.postCodeIdentifier</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">21</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="24">
        <property name="name" class="String">Extract districtName</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;h3&gt;.*?&lt;/h3&gt;.*?&lt;p&gt;.*?( \d+.*?)?&lt;/p&gt;\s+&lt;p&gt;\s+(\d{4}) (.*?)&lt;/p&gt;.*</property>
              <property name="replaceExp" class="String">$3</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.districtName</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">22</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="25">
        <property name="name" class="String">Extract contactPerson</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;p .*?Grocer"&gt;\s*v/(.*?)&lt;/p&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.StructuredTextOutputterStringProcessor"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.contactPerson</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">23</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="26">
        <property name="name" class="String">Extract telephone</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;p&gt;\s*Tlf.*? (.*?)\s*&lt;/p&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.SpaceRemover">
              <property name="removeSpaces" class="Boolean">true</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(.{8,11})</property>
              <property name="then1" class="String">$1</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.telephone</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">24</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="27">
        <property name="name" class="String">Extract telefax</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&lt;p .*?Fax"&gt;\s*Fax:\s*(.*?)\s*&lt;/p&gt;.*</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.SpaceRemover">
              <property name="removeSpaces" class="Boolean">true</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.IfThenTranslator">
              <property name="if1" class="String">(.{8,11})</property>
              <property name="then1" class="String">$1</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.telefax</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C400 BorderTop</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">25</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="28">
        <property name="name" class="String">Extract mondayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Mandag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.mondayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" idref="19"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">26</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="29">
        <property name="name" class="String">Return Object</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.ModelDone" serializationversion="0">
          <property name="modelObject" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" class="String">Store</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" idref="13"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">27</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="30">
        <property name="name" class="String">Extract mondayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Mandag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.mondayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">28</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="31">
        <property name="name" class="String">Extract tuesdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Tirsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.tuesdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">29</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="32">
        <property name="name" class="String">Extract tuesdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Tirsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.tuesdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">30</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="33">
        <property name="name" class="String">Extract wednesdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Onsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.wednesdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">31</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="34">
        <property name="name" class="String">Extract wednesdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Onsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.wednesdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">32</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="35">
        <property name="name" class="String">Extract thursdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Torsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.thursdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">33</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="36">
        <property name="name" class="String">Extract thursdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Torsdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.thursdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="1"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">34</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="37">
        <property name="name" class="String">Extract fridayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Fredag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.fridayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">35</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="38">
        <property name="name" class="String">Extract fridayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;Fredag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.fridayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">36</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="39">
        <property name="name" class="String">Extract saturdayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;L&amp;oslash;rdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.saturdayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">39</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="40">
        <property name="name" class="String">Extract saturdayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;L&amp;oslash;rdag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.saturdayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">40</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="41">
        <property name="name" class="String">Extract sundayOpen</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;S&amp;oslash;ndag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$1 + ":" + $2</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.sundayOpen</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">41</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
      <object class="kapow.robot.robomaker.robot.Transition" id="42">
        <property name="name" class="String">Extract sundayClose</property>
        <property name="stateProcessor" class="kapow.robot.plugin.common.stateprocessor.SimpleExtractor2" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="kapow.robot.robomaker.stringprocessor.StringProcessors">
            <element class="kapow.robot.plugin.common.stringprocessor.PatternReplacer">
              <property name="pattern" class="String">.*?&gt;S&amp;oslash;ndag:&lt;/span&gt;\s*&lt;div&gt;\s*(\d{2}):(\d{2}) - (\d{2}):(\d{2}).*</property>
              <property name="replaceExp" class="String">$3 + ":" + $4</property>
            </element>
            <element class="kapow.robot.plugin.common.stringprocessor.EvaluateExpressionStringProcessor">
              <property name="expression" class="String">"2010-01-01 " + INPUT + ":00"</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Store.sundayClose</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder">
            <property name="nodePath" class="String">.*.form.div.div.div.div</property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">C100 FactBox</property>
            </property>
          </object>
        </property>
        <property name="errorHandlingMode" idref="2"/>
        <property name="branchingMode" class="kapow.robot.robomaker.robot.BranchingMode">
          <mode class="Integer">0</mode>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">42</property>
        <property name="errorPropagationMode" idref="1"/>
      </object>
    </transitions>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="11"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="14"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="17"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="18"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="20"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="25"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="30"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="31"/>
        <to idref="32"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="32"/>
        <to idref="33"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="33"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="34"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="35"/>
        <to idref="36"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="36"/>
        <to idref="37"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="37"/>
        <to idref="38"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="38"/>
        <to idref="39"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="39"/>
        <to idref="40"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="40"/>
        <to idref="41"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="41"/>
        <to idref="42"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="42"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="startTransition" idref="0"/>
  <property name="nextTransitionId" class="Integer">43</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="1"/>
</object>
