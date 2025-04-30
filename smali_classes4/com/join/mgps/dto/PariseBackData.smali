.class public Lcom/join/mgps/dto/PariseBackData;
.super Ljava/lang/Object;
.source "PariseBackData.java"


# instance fields
.field private val:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dto/PariseBackData;->val:Z

    return-void
.end method


# virtual methods
.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PariseBackData;->val:Z

    return v0
.end method

.method public setVal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PariseBackData;->val:Z

    return-void
.end method
