import{G as R}from"./index-O2sPUQUf.js";/*!
 * (C) Ionic http://ionicframework.com - MIT License
 */const T=(t,n,c,s)=>{const o=F(t)?{capture:!!s.capture,passive:!!s.passive}:!!s.capture;let r,u;return t.__zone_symbol__addEventListener?(r="__zone_symbol__addEventListener",u="__zone_symbol__removeEventListener"):(r="addEventListener",u="removeEventListener"),t[r](n,c,o),()=>{t[u](n,c,o)}},F=t=>{if(g===void 0)try{const n=Object.defineProperty({},"passive",{get:()=>{g=!0}});t.addEventListener("optsTest",()=>{},n)}catch(n){g=!1}return!!g};let g;const W=2e3,j=(t,n,c,s,o)=>{let r,u,m,i,f,a,h,p=0;const y=d=>{p=Date.now()+W,n(d)&&(!u&&c&&(u=T(t,"touchmove",c,o)),m||(m=T(d.target,"touchend",e,o)),i||(i=T(d.target,"touchcancel",e,o)))},X=d=>{p>Date.now()||n(d)&&(!a&&c&&(a=T(G(t),"mousemove",c,o)),h||(h=T(G(t),"mouseup",Y,o)))},e=d=>{v(),s&&s(d)},Y=d=>{S(),s&&s(d)},v=()=>{u&&u(),m&&m(),i&&i(),u=m=i=void 0},S=()=>{a&&a(),h&&h(),a=h=void 0},E=()=>{v(),S()},_=(d=!0)=>{d?(r||(r=T(t,"touchstart",y,o)),f||(f=T(t,"mousedown",X,o))):(r&&r(),f&&f(),r=f=void 0,E())};return{enable:_,stop:E,destroy:()=>{_(!1),s=c=n=void 0}}},G=t=>t instanceof Document?t:t.ownerDocument,q=(t,n,c)=>{const s=c*(Math.PI/180),o=t==="x",r=Math.cos(s),u=n*n;let m=0,i=0,f=!1,a=0;return{start(h,p){m=h,i=p,a=0,f=!0},detect(h,p){if(!f)return!1;const y=h-m,X=p-i,e=y*y+X*X;if(e<u)return!1;const Y=Math.sqrt(e),v=(o?y:X)/Y;return v>r?a=1:v<-r?a=-1:a=0,f=!1,!0},isGesture(){return a!==0},getDirection(){return a}}},I=t=>{let n=!1,c=!1,s=!0,o=!1;const r=Object.assign({disableScroll:!1,direction:"x",gesturePriority:0,passive:!0,maxAngle:40,threshold:10},t),u=r.canStart,m=r.onWillStart,i=r.onStart,f=r.onEnd,a=r.notCaptured,h=r.onMove,p=r.threshold,y=r.passive,X=r.blurOnStart,e={type:"pan",startX:0,startY:0,startTime:0,currentX:0,currentY:0,velocityX:0,velocityY:0,deltaX:0,deltaY:0,currentTime:0,event:void 0,data:void 0},Y=q(r.direction,r.threshold,r.maxAngle),v=R.createGesture({name:t.gestureName,priority:t.gesturePriority,disableScroll:t.disableScroll}),S=l=>{const D=w(l);return c||!s||(x(l,e),e.startX=e.currentX,e.startY=e.currentY,e.startTime=e.currentTime=D,e.velocityX=e.velocityY=e.deltaX=e.deltaY=0,e.event=l,u&&u(e)===!1)||(v.release(),!v.start())?!1:(c=!0,p===0?b():(Y.start(e.startX,e.startY),!0))},E=l=>{if(n){!o&&s&&(o=!0,O(e,l),requestAnimationFrame(_));return}O(e,l),Y.detect(e.currentX,e.currentY)&&(!Y.isGesture()||!b())&&A()},_=()=>{n&&(o=!1,h&&h(e))},b=()=>v.capture()?(n=!0,s=!1,e.startX=e.currentX,e.startY=e.currentY,e.startTime=e.currentTime,m?m(e).then(C):C(),!0):!1,d=()=>{if(typeof document<"u"){const l=document.activeElement;l!=null&&l.blur&&l.blur()}},C=()=>{X&&d(),i&&i(e),s=!0},M=()=>{n=!1,c=!1,o=!1,s=!0,v.release()},L=l=>{const D=n,z=s;if(M(),!!z){if(O(e,l),D){f&&f(e);return}a&&a(e)}},P=j(r.el,S,E,L,{capture:!1,passive:y}),A=()=>{M(),P.stop(),a&&a(e)};return{enable(l=!0){l||(n&&L(void 0),M()),P.enable(l)},destroy(){v.destroy(),P.destroy()}}},O=(t,n)=>{if(!n)return;const c=t.currentX,s=t.currentY,o=t.currentTime;x(n,t);const r=t.currentX,u=t.currentY,i=(t.currentTime=w(n))-o;if(i>0&&i<100){const f=(r-c)/i,a=(u-s)/i;t.velocityX=f*.7+t.velocityX*.3,t.velocityY=a*.7+t.velocityY*.3}t.deltaX=r-t.startX,t.deltaY=u-t.startY,t.event=n},x=(t,n)=>{let c=0,s=0;if(t){const o=t.changedTouches;if(o&&o.length>0){const r=o[0];c=r.clientX,s=r.clientY}else t.pageX!==void 0&&(c=t.pageX,s=t.pageY)}n.currentX=c,n.currentY=s},w=t=>t.timeStamp||Date.now();export{R as GESTURE_CONTROLLER,I as createGesture};
