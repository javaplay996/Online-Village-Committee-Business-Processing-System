import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import banshijilu from '@/views/modules/banshijilu/list'
    import banshishenqing from '@/views/modules/banshishenqing/list'
    import butiehuodong from '@/views/modules/butiehuodong/list'
    import dangyuanfazhanjilu from '@/views/modules/dangyuanfazhanjilu/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import gongzuorenyuan from '@/views/modules/gongzuorenyuan/list'
    import liuyan from '@/views/modules/liuyan/list'
    import nongyebutie from '@/views/modules/nongyebutie/list'
    import tudibiangeng from '@/views/modules/tudibiangeng/list'
    import yonghu from '@/views/modules/yonghu/list'
    import config from '@/views/modules/config/list'
    import dictionaryBanshi from '@/views/modules/dictionaryBanshi/list'
    import dictionaryBanshijieguo from '@/views/modules/dictionaryBanshijieguo/list'
    import dictionaryBanshishenqingYesno from '@/views/modules/dictionaryBanshishenqingYesno/list'
    import dictionaryButiehuodong from '@/views/modules/dictionaryButiehuodong/list'
    import dictionaryDangyuanfazhanjilu from '@/views/modules/dictionaryDangyuanfazhanjilu/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryNongyebutie from '@/views/modules/dictionaryNongyebutie/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryTudibiangeng from '@/views/modules/dictionaryTudibiangeng/list'
    import dictionaryWenhua from '@/views/modules/dictionaryWenhua/list'
    import dictionaryZhuangtai from '@/views/modules/dictionaryZhuangtai/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryBanshi',
        name: '办事类型',
        component: dictionaryBanshi
    }
    ,{
        path: '/dictionaryBanshijieguo',
        name: '办事结果',
        component: dictionaryBanshijieguo
    }
    ,{
        path: '/dictionaryBanshishenqingYesno',
        name: '申请状态',
        component: dictionaryBanshishenqingYesno
    }
    ,{
        path: '/dictionaryButiehuodong',
        name: '补贴活动通告类型',
        component: dictionaryButiehuodong
    }
    ,{
        path: '/dictionaryDangyuanfazhanjilu',
        name: '发展类型',
        component: dictionaryDangyuanfazhanjilu
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryNongyebutie',
        name: '农业补贴类型',
        component: dictionaryNongyebutie
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryTudibiangeng',
        name: '土地变更类型',
        component: dictionaryTudibiangeng
    }
    ,{
        path: '/dictionaryWenhua',
        name: '文化程度',
        component: dictionaryWenhua
    }
    ,{
        path: '/dictionaryZhuangtai',
        name: '状态',
        component: dictionaryZhuangtai
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/banshijilu',
        name: '办事记录',
        component: banshijilu
      }
    ,{
        path: '/banshishenqing',
        name: '办事申请',
        component: banshishenqing
      }
    ,{
        path: '/butiehuodong',
        name: '补贴活动通告',
        component: butiehuodong
      }
    ,{
        path: '/dangyuanfazhanjilu',
        name: '党员发展',
        component: dangyuanfazhanjilu
      }
    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '公告',
        component: gonggao
      }
    ,{
        path: '/gongzuorenyuan',
        name: '工作人员',
        component: gongzuorenyuan
      }
    ,{
        path: '/liuyan',
        name: '留言板',
        component: liuyan
      }
    ,{
        path: '/nongyebutie',
        name: '农业补贴',
        component: nongyebutie
      }
    ,{
        path: '/tudibiangeng',
        name: '土地变更',
        component: tudibiangeng
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
