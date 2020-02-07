<aura:application >
    <aura:attribute name="userinput" type="string"/>
    <aura:registerevent name ="appEvent" type="c:appevent"/>
    <lightning:input value="{!v.userinput}"/>
     <lightning:button variant="base" label="Base" title="Base action" onclick="{! c.handleClick }"/>
</aura:application>