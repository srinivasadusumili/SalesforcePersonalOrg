({
	render : function(cmp, helper) {
    console.log('render');
    var ret = this.superRender();
      console.log(ret);
    return this.superRender() ;

},

})