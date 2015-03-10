/*
 * Ext JS Library 1.1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://www.extjs.com/license
 */

Ext.BasicLayoutRegion=function(C,B,D,A){this.mgr=C;this.position=D;this.events={"beforeremove":true,"invalidated":true,"visibilitychange":true,"paneladded":true,"panelremoved":true,"collapsed":true,"expanded":true,"slideshow":true,"slidehide":true,"panelactivated":true,"resized":true};this.panels=new Ext.util.MixedCollection();this.panels.getKey=this.getPanelId.createDelegate(this);this.box=null;this.activePanel=null;if(A!==true){this.applyConfig(B)}};Ext.extend(Ext.BasicLayoutRegion,Ext.util.Observable,{getPanelId:function(A){return A.getId()},applyConfig:function(A){this.margins=A.margins||this.margins||{top:0,left:0,right:0,bottom:0};this.config=A},resizeTo:function(A){var B=this.el?this.el:(this.activePanel?this.activePanel.getEl():null);if(B){switch(this.position){case"east":case"west":B.setWidth(A);this.fireEvent("resized",this,A);break;case"north":case"south":B.setHeight(A);this.fireEvent("resized",this,A);break}}},getBox:function(){return this.activePanel?this.activePanel.getEl().getBox(false,true):null},getMargins:function(){return this.margins},updateBox:function(B){this.box=B;var A=this.activePanel.getEl();A.dom.style.left=B.x+"px";A.dom.style.top=B.y+"px";this.activePanel.setSize(B.width,B.height)},getEl:function(){return this.activePanel},isVisible:function(){return this.activePanel?true:false},setActivePanel:function(A){A=this.getPanel(A);if(this.activePanel&&this.activePanel!=A){this.activePanel.setActiveState(false);this.activePanel.getEl().setLeftTop(-10000,-10000)}this.activePanel=A;A.setActiveState(true);if(this.box){A.setSize(this.box.width,this.box.height)}this.fireEvent("panelactivated",this,A);this.fireEvent("invalidated")},showPanel:function(A){if(A=this.getPanel(A)){this.setActivePanel(A)}return A},getActivePanel:function(){return this.activePanel},add:function(B){if(arguments.length>1){for(var C=0,A=arguments.length;C<A;C++){this.add(arguments[C])}return null}if(this.hasPanel(B)){this.showPanel(B);return B}var D=B.getEl();if(D.dom.parentNode!=this.mgr.el.dom){this.mgr.el.dom.appendChild(D.dom)}if(B.setRegion){B.setRegion(this)}this.panels.add(B);D.setStyle("position","absolute");if(!B.background){this.setActivePanel(B);if(this.config.initialSize&&this.panels.getCount()==1){this.resizeTo(this.config.initialSize)}}this.fireEvent("paneladded",this,B);return B},hasPanel:function(A){if(typeof A=="object"){A=A.getId()}return this.getPanel(A)?true:false},remove:function(B,A){B=this.getPanel(B);if(!B){return null}var D={};this.fireEvent("beforeremove",this,B,D);if(D.cancel===true){return null}var C=B.getId();this.panels.removeKey(C);return B},getPanel:function(A){if(typeof A=="object"){return A}return this.panels.get(A)},getPosition:function(){return this.position}});