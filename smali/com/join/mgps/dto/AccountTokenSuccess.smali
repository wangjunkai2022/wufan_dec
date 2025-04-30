.class public Lcom/join/mgps/dto/AccountTokenSuccess;
.super Ljava/lang/Object;
.source "AccountTokenSuccess.java"


# instance fields
.field private error_code:Ljava/lang/String;

.field private error_msg:Ljava/lang/String;

.field private is_success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private user_info:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_msg:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_code:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success:Z

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->user_info:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method


# virtual methods
.method public getError_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_code:Ljava/lang/String;

    return-object v0
.end method

.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->user_info:Lcom/join/mgps/dto/AccountBean;

    return-object v0
.end method

.method public is_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success:Z

    return v0
.end method

.method public setError_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_code:Ljava/lang/String;

    return-void
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success:Z

    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountTokenSuccess;->user_info:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method
