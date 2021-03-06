// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SpJsonTest.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading;
using System.Threading.Tasks;

namespace SpJsonTest.Data
{
    public partial class TestdbContext
    {
        private TestdbContextProcedures _procedures;

        public virtual TestdbContextProcedures Procedures
        {
            get
            {
                if (_procedures is null) _procedures = new TestdbContextProcedures(this);
                return _procedures;
            }
            set
            {
                _procedures = value;
            }
        }

        public TestdbContextProcedures GetProcedures()
        {
            return Procedures;
        }
    }

    public partial class TestdbContextProcedures
    {
        private readonly TestdbContext _context;

        public TestdbContextProcedures(TestdbContext context)
        {
            _context = context;
        }

        public virtual async Task<List<sp_Result_json>> sp_get_studentAsync(OutputParameter<int> returnValue = null, CancellationToken cancellationToken = default)
        {
            var parameterreturnValue = new SqlParameter
            {
                ParameterName = "returnValue",
                Direction = System.Data.ParameterDirection.Output,
                SqlDbType = System.Data.SqlDbType.Int,
            };

            var sqlParameters = new []
            {
                parameterreturnValue,
            };
            var _ = await _context.SqlQueryAsync<sp_Result_json>("EXEC @returnValue = [dbo].[sp_get_student]", sqlParameters, cancellationToken);

            returnValue?.SetValue(parameterreturnValue.Value);

            return _;
        }

        public virtual async Task<List<sp_Result_json>> sp_get_employeeAsync(OutputParameter<int> returnValue = null, CancellationToken cancellationToken = default)
        {
            var parameterreturnValue = new SqlParameter
            {
                ParameterName = "returnValue",
                Direction = System.Data.ParameterDirection.Output,
                SqlDbType = System.Data.SqlDbType.Int,
            };

            var sqlParameters = new[]
            {
                parameterreturnValue,
            };
            var _ = await _context.SqlQueryAsync<sp_Result_json>("EXEC @returnValue = sp_get_employee", sqlParameters, cancellationToken);

            returnValue?.SetValue(parameterreturnValue.Value);

            return _;
        }

        public virtual async Task<List<sp_Result_json>> sp_get_Async(string spName)
        {
            var _ = await _context.SqlQueryAsync<sp_Result_json>("EXEC "+ spName);
            return _;
        }
    }
}
