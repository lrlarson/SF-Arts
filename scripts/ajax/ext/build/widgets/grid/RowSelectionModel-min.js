/*
 * Ext JS Library 1.1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://www.extjs.com/license
 */

Ext.grid.RowSelectionModel=function(A){Ext.apply(this,A);this.selections=new Ext.util.MixedCollection(false,function(B){return B.id});this.last=false;this.lastActive=false;this.addEvents({"selectionchange":true,"beforerowselect":true,"rowselect":true,"rowdeselect":true});this.locked=false};Ext.extend(Ext.grid.RowSelectionModel,Ext.grid.AbstractSelectionModel,{singleSelect:false,initEvents:function(){if(!this.grid.enableDragDrop&&!this.grid.enableDrag){this.grid.on("mousedown",this.handleMouseDown,this)}else{this.grid.on("rowclick",function(B,D,C){if(C.button===0&&!C.shiftKey&&!C.ctrlKey){this.selectRow(D,false);B.view.focusRow(D)}},this)}this.rowNav=new Ext.KeyNav(this.grid.getGridEl(),{"up":function(C){if(!C.shiftKey){this.selectPrevious(C.shiftKey)}else{if(this.last!==false&&this.lastActive!==false){var B=this.last;this.selectRange(this.last,this.lastActive-1);this.grid.getView().focusRow(this.lastActive);if(B!==false){this.last=B}}else{this.selectFirstRow()}}},"down":function(C){if(!C.shiftKey){this.selectNext(C.shiftKey)}else{if(this.last!==false&&this.lastActive!==false){var B=this.last;this.selectRange(this.last,this.lastActive+1);this.grid.getView().focusRow(this.lastActive);if(B!==false){this.last=B}}else{this.selectFirstRow()}}},scope:this});var A=this.grid.view;A.on("refresh",this.onRefresh,this);A.on("rowupdated",this.onRowUpdated,this);A.on("rowremoved",this.onRemove,this)},onRefresh:function(){var D=this.grid.dataSource,B,A=this.grid.view;var C=this.selections;C.each(function(E){if((B=D.indexOfId(E.id))!=-1){A.onRowSelect(B)}else{C.remove(E)}})},onRemove:function(A,B,C){this.selections.remove(C)},onRowUpdated:function(A,B,C){if(this.isSelected(C)){A.onRowSelect(B)}},selectRecords:function(B,E){if(!E){this.clearSelections()}var D=this.grid.dataSource;for(var C=0,A=B.length;C<A;C++){this.selectRow(D.indexOf(B[C]),true)}},getCount:function(){return this.selections.length},selectFirstRow:function(){this.selectRow(0)},selectLastRow:function(A){this.selectRow(this.grid.dataSource.getCount()-1,A)},selectNext:function(A){if(this.last!==false&&(this.last+1)<this.grid.dataSource.getCount()){this.selectRow(this.last+1,A);this.grid.getView().focusRow(this.last)}},selectPrevious:function(A){if(this.last){this.selectRow(this.last-1,A);this.grid.getView().focusRow(this.last)}},getSelections:function(){return[].concat(this.selections.items)},getSelected:function(){return this.selections.itemAt(0)},clearSelections:function(A){if(this.locked){return }if(A!==true){var C=this.grid.dataSource;var B=this.selections;B.each(function(D){this.deselectRow(C.indexOfId(D.id))},this);B.clear()}else{this.selections.clear()}this.last=false},selectAll:function(){if(this.locked){return }this.selections.clear();for(var B=0,A=this.grid.dataSource.getCount();B<A;B++){this.selectRow(B,true)}},hasSelection:function(){return this.selections.length>0},isSelected:function(A){var B=typeof A=="number"?this.grid.dataSource.getAt(A):A;return(B&&this.selections.key(B.id)?true:false)},isIdSelected:function(A){return(this.selections.key(A)?true:false)},handleMouseDown:function(E,C){var A=this.grid.getView(),F;if(this.isLocked()||(F=A.findRowIndex(C))===false){return }if(E.shiftKey&&this.last!==false){var D=this.last;this.selectRange(D,F,E.ctrlKey);this.last=D;A.focusRow(F)}else{var B=this.isSelected(F);if(E.button!==0&&B){A.focusRow(F)}else{if(E.ctrlKey&&B){this.deselectRow(F)}else{if(!B){this.selectRow(F,E.button===0&&(E.ctrlKey||E.shiftKey));A.focusRow(F)}}}}},selectRows:function(C,D){if(!D){this.clearSelections()}for(var B=0,A=C.length;B<A;B++){this.selectRow(C[B],true)}},selectRange:function(B,A,D){if(this.locked){return }if(!D){this.clearSelections()}if(B<=A){for(var C=B;C<=A;C++){this.selectRow(C,true)}}else{for(var C=B;C>=A;C--){this.selectRow(C,true)}}},deselectRange:function(C,B,A){if(this.locked){return }for(var D=C;D<=B;D++){this.deselectRow(D,A)}},selectRow:function(B,D,A){if(this.locked||(B<0||B>=this.grid.dataSource.getCount())){return }if(this.fireEvent("beforerowselect",this,B,D)!==false){if(!D||this.singleSelect){this.clearSelections()}var C=this.grid.dataSource.getAt(B);this.selections.add(C);this.last=this.lastActive=B;if(!A){this.grid.getView().onRowSelect(B)}this.fireEvent("rowselect",this,B,C);this.fireEvent("selectionchange",this)}},deselectRow:function(B,A){if(this.locked){return }if(this.last==B){this.last=false}if(this.lastActive==B){this.lastActive=false}var C=this.grid.dataSource.getAt(B);this.selections.remove(C);if(!A){this.grid.getView().onRowDeselect(B)}this.fireEvent("rowdeselect",this,B);this.fireEvent("selectionchange",this)},restoreLast:function(){if(this._last){this.last=this._last}},acceptsNav:function(C,B,A){return !A.isHidden(B)&&A.isCellEditable(B,C)},onEditorKey:function(E,D){var B=D.getKey(),F,C=this.grid,A=C.activeEditor;if(B==D.TAB){D.stopEvent();A.completeEdit();if(D.shiftKey){F=C.walkCells(A.row,A.col-1,-1,this.acceptsNav,this)}else{F=C.walkCells(A.row,A.col+1,1,this.acceptsNav,this)}}else{if(B==D.ENTER&&!D.ctrlKey){D.stopEvent();A.completeEdit();if(D.shiftKey){F=C.walkCells(A.row-1,A.col,-1,this.acceptsNav,this)}else{F=C.walkCells(A.row+1,A.col,1,this.acceptsNav,this)}}else{if(B==D.ESC){A.cancelEdit()}}}if(F){C.startEditing(F[0],F[1])}}});