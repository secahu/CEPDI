using CEPDI.Models;
using CEPDI.Repositories.Interfaces;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CEPDI.Repositories
{
    public class MedicamentosRepository:GenericRepository<MedicamentosModel>,IMedicamentosRepository
    {

        private static string _tableName = "Medicamentos";
        private static string _tableNameV = "VMedicamentos";
        public MedicamentosRepository() : base(_tableName, _tableNameV)
        {
        }


        public async Task<MedicamentosModel> getByFiltros(MedicamentosModel filtro)
        {
            string where = " WHERE Activo=@Activo ";


            string sql = $"select * " +
                $" from {_tableName}";

            var dictionary = new Dictionary<string, object>
            {
                { "@Activo", 1 }
            };

            if (filtro.Id > 0)
            {
                dictionary.Add("@Id", filtro.Id);
                where += $" and Id=@Id ";
            }

            if (!string.IsNullOrEmpty(filtro.Nombre))
            {
                dictionary.Add("@Nombre", filtro.Nombre);
                where += $" and Nombre=@Nombre ";
            }

            sql += where;
            var parameters = new DynamicParameters(dictionary);
            using (var connection = new SqlConnection(_connection))
            {
                MedicamentosModel result = new MedicamentosModel();
                try
                {
                    result = await connection.QueryFirstOrDefaultAsync<MedicamentosModel>(sql, filtro);
                }
                catch (Exception E)
                {
                    string error = E.Message;
                }

                return result;
            }
        }
    }
}