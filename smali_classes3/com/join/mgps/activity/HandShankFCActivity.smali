.class public Lcom/join/mgps/activity/HandShankFCActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "HandShankFCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankFCActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0034
.end annotation


# instance fields
.field A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field B:[Landroid/view/View;

.field C:[Lcom/join/mgps/activity/HandShankFCActivity$a;

.field D:Lcom/join/mgps/joystick/map/d;

.field E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field H:Landroid/view/View;

.field c:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y:Z

.field final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    const-string v0, "FC\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->z:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 4
    new-instance v0, Lcom/join/mgps/joystick/map/d;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-direct {v0, v1}, Lcom/join/mgps/joystick/map/d;-><init>(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->D:Lcom/join/mgps/joystick/map/d;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->E:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    return-void
.end method

.method private Y0(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->B:[Landroid/view/View;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/HandShankFCActivity$a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/join/mgps/activity/HandShankFCActivity$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/join/mgps/activity/HandShankFCActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->B:[Landroid/view/View;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private a1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    const-string v0, "KEY"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->E:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v1, v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private initView()V
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [Landroid/view/View;

    .line 1
    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->c:Landroid/widget/Button;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->d:Landroid/widget/Button;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->m:Landroid/widget/Button;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->k:Landroid/widget/Button;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->l:Landroid/widget/Button;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->e:Landroid/widget/Button;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->f:Landroid/widget/Button;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->g:Landroid/widget/Button;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->h:Landroid/widget/Button;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->i:Landroid/widget/Button;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->j:Landroid/widget/Button;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->n:Landroid/widget/Button;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->o:Landroid/widget/Button;

    const/16 v16, 0xc

    aput-object v3, v2, v16

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->p:Landroid/widget/Button;

    const/16 v17, 0xd

    aput-object v3, v2, v17

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->q:Landroid/widget/Button;

    const/16 v18, 0xe

    aput-object v3, v2, v18

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->r:Landroid/widget/Button;

    const/16 v19, 0xf

    aput-object v3, v2, v19

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->s:Landroid/widget/Button;

    const/16 v20, 0x10

    aput-object v3, v2, v20

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->t:Landroid/widget/Button;

    const/16 v21, 0x11

    aput-object v3, v2, v21

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->u:Landroid/widget/Button;

    const/16 v22, 0x12

    aput-object v3, v2, v22

    iget-object v3, v0, Lcom/join/mgps/activity/HandShankFCActivity;->v:Landroid/widget/Button;

    const/16 v23, 0x13

    aput-object v3, v2, v23

    iput-object v2, v0, Lcom/join/mgps/activity/HandShankFCActivity;->B:[Landroid/view/View;

    new-array v1, v1, [Lcom/join/mgps/activity/HandShankFCActivity$a;

    .line 2
    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    sget-object v5, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v24

    or-int v4, v4, v24

    sget-object v15, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v25

    or-int v4, v4, v25

    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v6

    or-int/2addr v4, v6

    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;I)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    sget-object v6, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v7

    or-int/2addr v4, v7

    invoke-direct {v2, v0, v4}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;I)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-direct {v2, v0, v5}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-direct {v2, v0, v15}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-direct {v2, v0, v6}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_2:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_3:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v17

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_4:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v18

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP0:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v19

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP1:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v20

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP2:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v21

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP3:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v22

    new-instance v2, Lcom/join/mgps/activity/HandShankFCActivity$a;

    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP4:Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/HandShankFCActivity$a;-><init>(Lcom/join/mgps/activity/HandShankFCActivity;Lcom/join/mgps/joystick/map/KeyCodes;)V

    aput-object v2, v1, v23

    iput-object v1, v0, Lcom/join/mgps/activity/HandShankFCActivity;->C:[Lcom/join/mgps/activity/HandShankFCActivity$a;

    .line 4
    iget-object v2, v0, Lcom/join/mgps/activity/HandShankFCActivity;->B:[Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/activity/HandShankFCActivity;->X0([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFCActivity$a;)V

    return-void
.end method


# virtual methods
.method protected L0(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/papa/controller/core/PadKeyEvent;->d()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->N0(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankFCActivity;->d1(ILandroid/view/KeyEvent;)Z

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    move-result p1

    return p1
.end method

.method U0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method V0(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankFCActivity;->Y0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFCActivity;->W0(Landroid/view/View;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankFCActivity$a;

    .line 5
    iput-object p2, v0, Lcom/join/mgps/activity/HandShankFCActivity$a;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFCActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->g1(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method W0(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankFCActivity$a;

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lcom/join/mgps/activity/HandShankFCActivity$a;->b:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFCActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->g1(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method X0([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFCActivity$a;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/join/mgps/activity/HandShankFCActivity$a;->b()V

    .line 5
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankFCActivity;->g1(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method Z0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "KEY_"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BUTTON_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->w:Landroid/widget/TextView;

    const-string v1, "FC\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankFCActivity;->a1()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankFCActivity;->initView()V

    return-void
.end method

.method b1(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->y:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    invoke-static {p0, v0, v1}, Lcom/join/mgps/joystick/map/d;->m(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/util/Map;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d1(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->b1(I)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->E:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->V0(Landroid/view/View;Ljava/lang/String;)V

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->y:Z

    :cond_2
    return v0

    .line 8
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method e1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankFCActivity;->A:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    iget-object v2, v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->F:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->B:[Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->C:[Lcom/join/mgps/activity/HandShankFCActivity$a;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/HandShankFCActivity;->X0([Landroid/view/View;[Lcom/join/mgps/activity/HandShankFCActivity$a;)V

    return-void
.end method

.method f1(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->g1(Landroid/view/View;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFCActivity;->g1(Landroid/view/View;)V

    .line 5
    :cond_2
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    .line 6
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_3

    const v0, 0x7f080551

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method g1(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankFCActivity$a;

    .line 3
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankFCActivity$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080550

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/HandShankFCActivity$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankFCActivity;->Z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f08054f

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const-string v0, "\u5f85\u5b9a"

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankFCActivity;->H:Landroid/view/View;

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/HandShankFCActivity$a;

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankFCActivity;->f1(Landroid/view/View;)V

    return-void
.end method
