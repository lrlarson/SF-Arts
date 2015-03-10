/*
 * Ext JS Library 1.1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://www.extjs.com/license
 */

Ext.SplitButton=function(B,A){Ext.SplitButton.superclass.constructor.call(this,B,A);this.addEvents({"arrowclick":true})};Ext.extend(Ext.SplitButton,Ext.Button,{render:function(D){var A=new Ext.Template("<table cellspacing=\"0\" class=\"x-btn-menu-wrap x-btn\"><tr><td>","<table cellspacing=\"0\" class=\"x-btn-wrap x-btn-menu-text-wrap\"><tbody>","<tr><td class=\"x-btn-left\"><i>&#160;</i></td><td class=\"x-btn-center\"><button class=\"x-btn-text\" type=\"{1}\">{0}</button></td></tr>","</tbody></table></td><td>","<table cellspacing=\"0\" class=\"x-btn-wrap x-btn-menu-arrow-wrap\"><tbody>","<tr><td class=\"x-btn-center\"><button class=\"x-btn-menu-arrow-el\" type=\"button\">&#160;</button></td><td class=\"x-btn-right\"><i>&#160;</i></td></tr>","</tbody></table></td></tr></table>");var B=A.append(D,[this.text,this.type],true);var C=B.child("button");if(this.cls){B.addClass(this.cls)}if(this.icon){C.setStyle("background-image","url("+this.icon+")")}if(this.iconCls){C.addClass(this.iconCls);if(!this.cls){B.addClass(this.text?"x-btn-text-icon":"x-btn-icon")}}this.el=B;if(this.handleMouseEvents){B.on("mouseover",this.onMouseOver,this);B.on("mouseout",this.onMouseOut,this);B.on("mousedown",this.onMouseDown,this);B.on("mouseup",this.onMouseUp,this)}B.on(this.clickEvent,this.onClick,this);if(this.tooltip){if(typeof this.tooltip=="object"){Ext.QuickTips.tips(Ext.apply({target:C.id},this.tooltip))}else{C.dom[this.tooltipType]=this.tooltip}}if(this.arrowTooltip){B.child("button:nth(2)").dom[this.tooltipType]=this.arrowTooltip}if(this.hidden){this.hide()}if(this.disabled){this.disable()}if(this.pressed){this.el.addClass("x-btn-pressed")}if(Ext.isIE&&!Ext.isIE7){this.autoWidth.defer(1,this)}else{this.autoWidth()}if(this.menu){this.menu.on("show",this.onMenuShow,this);this.menu.on("hide",this.onMenuHide,this)}},autoWidth:function(){if(this.el){var C=this.el.child("table:first");var B=this.el.child("table:last");this.el.setWidth("auto");C.setWidth("auto");if(Ext.isIE7&&Ext.isStrict){var A=this.el.child("button:first");if(A&&A.getWidth()>20){A.clip();A.setWidth(Ext.util.TextMetrics.measure(A,this.text).width+A.getFrameWidth("lr"))}}if(this.minWidth){if(this.hidden){this.el.beginMeasure()}if((C.getWidth()+B.getWidth())<this.minWidth){C.setWidth(this.minWidth-B.getWidth())}if(this.hidden){this.el.endMeasure()}}this.el.setWidth(C.getWidth()+B.getWidth())}},setHandler:function(B,A){this.handler=B;this.scope=A},setArrowHandler:function(B,A){this.arrowHandler=B;this.scope=A},focus:function(){if(this.el){this.el.child("button:first").focus()}},onClick:function(A){A.preventDefault();if(!this.disabled){if(A.getTarget(".x-btn-menu-arrow-wrap")){if(this.menu&&!this.menu.isVisible()){this.menu.show(this.el,this.menuAlign)}this.fireEvent("arrowclick",this,A);if(this.arrowHandler){this.arrowHandler.call(this.scope||this,this,A)}}else{this.fireEvent("click",this,A);if(this.handler){this.handler.call(this.scope||this,this,A)}}}},onMouseDown:function(A){if(!this.disabled){Ext.fly(A.getTarget("table")).addClass("x-btn-click")}},onMouseUp:function(A){Ext.fly(A.getTarget("table")).removeClass("x-btn-click")}});Ext.MenuButton=Ext.SplitButton;