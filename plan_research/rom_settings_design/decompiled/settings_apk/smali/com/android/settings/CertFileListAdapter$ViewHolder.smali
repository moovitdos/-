.class public Lcom/android/settings/CertFileListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CertFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CertFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field filedate:Landroid/widget/TextView;

.field fileicon:Landroid/widget/ImageView;

.field filename:Landroid/widget/TextView;

.field subfilesnum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
