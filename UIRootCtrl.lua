UIRootCtrl = {};
local this = UIRootCtrl;

local root;
local transform;
local gameobject;

function UIRootCtrl.New()
    return this;
end

function UIRootCtrl.Awake()
    print('�����桢������');

    --����ķ������Ǹ����UI����¡����  ��������ʱ ʹ�� : ���Ϻ���ķ���
    CS.LuaHelperManager.Instance:LoadUI("UIRootView",this.OnCreate);
    --CS.LuaHelperManager ȥ����Unity�е�LuaHelperManager�ű��еķ�������UI����ص�
end


-- Awake����UI�Ļص������ؿ�¡��obj����
function UIRootCtrl.OnCreate(obj)
    print('UI��¡��ϵĻص�');

    print(UIRootView);
    local btnOpenTask = UIRootView.btnOpenTask;
    btnOpenTask.onClick:AddListener(UIRootCtrl.OnBtnOpenTaskClick);
end

-- ��ť����ķ���
function UIRootCtrl.OnBtnOpenTaskClick()
 	print("UIRootCtrl.OnBtnOpenTaskClick��������")
end 