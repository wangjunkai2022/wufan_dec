.class Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;
.super Ljava/lang/Object;
.source "InstallAppFirstNoticeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    iput-boolean p2, p1, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    .line 2
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstInstallAppCompanyDialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;

    iget-boolean p2, p2, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method
