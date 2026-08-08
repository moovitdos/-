.class public final Lcom/android/settings/ApnEditorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApnEditorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public cBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/android/settings/ApnEditorAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnEditorAdapter;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->this$0:Lcom/android/settings/ApnEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
