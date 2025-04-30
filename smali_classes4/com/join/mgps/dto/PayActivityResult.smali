.class public Lcom/join/mgps/dto/PayActivityResult;
.super Ljava/lang/Object;
.source "PayActivityResult.java"


# instance fields
.field private activity:Lcom/join/mgps/dto/PayActivityBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/join/mgps/dto/PayActivityBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayActivityResult;->activity:Lcom/join/mgps/dto/PayActivityBean;

    return-object v0
.end method

.method public setActivity(Lcom/join/mgps/dto/PayActivityBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayActivityResult;->activity:Lcom/join/mgps/dto/PayActivityBean;

    return-void
.end method
