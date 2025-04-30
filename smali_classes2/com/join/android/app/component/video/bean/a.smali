.class public Lcom/join/android/app/component/video/bean/a;
.super Ljava/lang/Object;
.source "VideoBean.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/join/mgps/Util/IntentDateBean;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/join/android/app/component/video/bean/a;->a:I

    .line 8
    iput-object p2, p0, Lcom/join/android/app/component/video/bean/a;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/join/android/app/component/video/bean/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/android/app/component/video/bean/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/bean/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/component/video/bean/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/component/video/bean/a;->d:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/bean/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/bean/a;->d:Lcom/join/mgps/Util/IntentDateBean;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/bean/a;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/bean/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/bean/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/bean/a;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/bean/a;->d:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/bean/a;->a:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/bean/a;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/bean/a;->b:Ljava/lang/String;

    return-void
.end method
