(window.webpackJsonp=window.webpackJsonp||[]).push([[10],{397:function(e,a,t){"use strict";t.r(a);var n=t(140),l=t(32),s=t(33),c=t(43),o=t(42),r=t(9),u=t(44),i=t(1),m=t.n(i),d=t(354),g=t(8),p=t(24),b=t(0),f=t.n(b),v=t(11),O=t.n(v),E=t(3),N={tag:E.k,flush:f.a.bool,className:f.a.string,cssModule:f.a.object},h=function(e){var a=e.className,t=e.cssModule,n=e.tag,l=e.flush,s=Object(p.a)(e,["className","cssModule","tag","flush"]),c=Object(E.g)(O()(a,"list-group",!!l&&"list-group-flush"),t);return m.a.createElement(n,Object(g.a)({},s,{className:c}))};h.propTypes=N,h.defaultProps={tag:"ul"};var j=h,y=t(335),k=t(95),w=function(e){function a(e){var t;Object(l.a)(this,a),t=Object(c.a)(this,Object(o.a)(a).call(this,e));var n=k.a.getAccountInfo();return t.state={dropdownOpen:!1,account:n.account},t.toggle=t.toggle.bind(Object(r.a)(t)),t.onLogOut=t.onLogOut.bind(Object(r.a)(t)),t}return Object(u.a)(a,e),Object(s.a)(a,[{key:"toggle",value:function(e){this.setState(Object(n.a)({},e,!this.state[e]))}},{key:"onLogOut",value:function(){k.a.logout()}},{key:"render",value:function(){var e=this.state.account;return m.a.createElement(m.a.Fragment,null,m.a.createElement(d.i,{className:"d-lg-none",display:"md",mobile:!0}),m.a.createElement("div",{className:"navbar-brand"},m.a.createElement("span",{className:"navbar-brand-full"},"Cloud Journey APP"),m.a.createElement(d.i,{className:"d-md-down-none",display:"lg"})),m.a.createElement("div",null,m.a.createElement(j,{className:"list-group-accent",tag:"div"},m.a.createElement("div",{className:"list-group-item",style:{padding:"0 1.25rem"}},m.a.createElement("div",null,m.a.createElement("strong",null,e.name)," "),m.a.createElement("small",{className:"text-muted mr-3"},m.a.createElement("i",{className:"icon-user"}),"\xa0",m.a.createElement(y.a,{color:"link",className:"text-muted",style:{padding:"0 0 6px 6px",fontSize:"13px"},onClick:this.onLogOut},"Cerrar Sesi\xf3n"))))))}}]),a}(m.a.PureComponent);a.default=w}}]);