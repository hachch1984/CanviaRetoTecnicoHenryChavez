namespace CanviaRetoTecnicoHenryChavez.Model.Entity
{
    public class Worker
    {
        public string Id { get; set; }  
        public string FullName { get; set; }
        public string Dni { get; set; }

        #region
        public Store Store { get; set; }
        public string Store_Id { get; set; }
        #endregion

    }
}
