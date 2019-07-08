namespace Portal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class f : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        User_ID = c.Long(nullable: false, identity: true),
                        Person_ID = c.Long(nullable: false),
                        Name = c.String(),
                        Pass = c.String(),
                        Role1 = c.Int(nullable: false),
                        Role2 = c.Int(nullable: false),
                        Active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.User_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Users");
        }
    }
}
